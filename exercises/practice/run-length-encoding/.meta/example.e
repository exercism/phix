global function run_length_encode(string input)
    string out = ""
    integer l = length(input)
    if l then
        integer lastch = input[1], count = 1
        for i=2 to l+1 do
            if i>l or input[i]!=lastch then
                if count>1 then
                    out &= sprintf("%d",count)
                end if
                out &= lastch
                if i<=l then
                    {lastch, count} = {input[i], 0}
                end if
            end if
            count += 1
        end for
    end if
    return out
end function

global function run_length_decode(string input)
    string out = ""
    integer count = 0
    for ch in input do
        if ch>='0' and ch<='9' then
            count = count*10 + (ch-'0')
        else
            out &= repeat(ch,max(count,1))
            count = 0
        end if
    end for
    return out
end function

