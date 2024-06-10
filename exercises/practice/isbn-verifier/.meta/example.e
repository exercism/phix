global function is_valid(sequence isbn)
    integer m = 10, res = 0, c
    for i=1 to length(isbn) do
        c = isbn[i]
        if c>='0' and c<='9' then
            res += m*(c-'0')
            m -= 1
        elsif c='X' and m=1 then
            res += 10
            m -= 1
        elsif c!='-' then
            return 0
        end if
    end for
    return m=0 and rmdr(res,11)=0 
end function

