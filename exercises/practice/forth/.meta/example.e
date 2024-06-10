--without trace
--include dict.e
--include repeat.e
--with trace
requires("1.0.5") -- (bugfix in to_integer)

local function process(sequence stack, words, integer word_dict)
    for i,w in words do
        if is_integer(w) then
            stack &= to_integer(w)
        elsif w=":" then
            string wd = words[i+1]
            if is_integer(wd) then throw("illegal define:"&wd) end if
            sequence cmd = {}
            integer k = find(";",words,i+1), 
                    l = length(words)
            if k=0 then k = l+1 end if
            for w in words from i+2 to k-1 do
                if getd_index(w,word_dict)!=NULL then
                    cmd &= getd(w,word_dict)
                else
                    cmd = append(cmd,w)
                end if
            end for
            setd(wd,cmd,word_dict)
            if k<l then 
                stack = process(stack,words[k+1..$],word_dict)
            end if
            exit
        elsif getd_index(w,word_dict)!=NULL then
            stack = process(stack,getd(w,word_dict),word_dict)
        else
            integer l = length(stack),
                   op = find(w,{"+","-","*","/","swap","over","dup","drop"})
            if op=0 then throw("undefined operation:"&w) end if
            if l=0 then throw("empty stack") end if
            integer top = stack[$], tm1
            if op<7 then
                if l=1 then throw("only one value on the stack") end if
                if op=4 and top=0 then throw("divide by zero") end if
                tm1 = stack[$-1]
            end if
            if op<5 or op=8 then stack = stack[1..$-1] end if
            switch op do
                case 1: stack[$] = tm1+top
                case 2: stack[$] = tm1-top
                case 3: stack[$] = tm1*top
                case 4: stack[$] = floor(tm1/top)
                case 5: {stack[$-1],stack[$]} = {top,tm1} -- swap
                case 6: stack &= tm1                     -- over
                case 7: stack &= top                    -- dup
--              case 8: (implicit/already done)       -- drop
            end switch
        end if
    end for
    return stack
end function

global function forth(sequence code)
    sequence stack = {}
    integer word_dict = new_dict()
    for line in code do
        stack = process(stack,split(lower(line)),word_dict)
    end for
    destroy_dict(word_dict)
    return stack
end function

