global function encode(string msg)
    nested function az09(integer ch)
        return (ch>='a' and ch<='z')
            or (ch>='0' and ch<='9')
    end nested function
    msg = filter(lower(msg),az09)
    string res = ""
    integer l = length(msg)
    if l then
        integer c = floor(sqrt(l-1))+1,
                r = floor((l-1)/c)+1
        for i=1 to c do
            if i>1 then res &= " " end if
            for j=i to r*c by c do
                res &= iff(j>l?' ':msg[j])
            end for
        end for
    end if
    return res
end function

