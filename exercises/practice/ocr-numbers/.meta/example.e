function unpack_digits()
    -- Use dots instead of spaces to avoid any stupid 
    --  space vs tab errors caused by copy and paste.
    -- Stored with spaces at runtime, though, and all
    --  tests/params should contain spaces not dots.
    string digits = `
._....._.._....._.._.._.._.._.
|.|..|._|._||_||_.|_...||_||_|
|_|..||_.._|..|._||_|..||_|._|
..............................`
    sequence d4 = split(substitute(digits,'.',' '),'\n'),
             d09 = {}
    for i=1 to length(d4[1]) by 3 do
        d09 = append(d09,vslice(d4,{i,i+2}))
    end for
    return d09
end function

constant d09 = unpack_digits()

global function recognise_digit(sequence s4)
    integer r = find(s4,d09)
    return iff(r?'0'+r-1:'?')
end function

global function recognize(string s)
    sequence res = {}, l = split(s,'\n')
    for i=1 to length(l) by 4 do
        sequence l3 = l[i..i+3]
        string r = ""
        for j=1 to length(l[i]) by 3 do
            r &= recognise_digit(vslice(l3,{j,j+2}))
        end for
        res = append(res, r)
    end for
    return res      
--  return join(res,",")
end function

