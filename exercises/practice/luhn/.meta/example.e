global function luhn(string s)
    s = reverse(filter(s,"out"," "))
    if length(s)<=1 then return false end if
    integer checksum = 0
    for i,c in s do
        c -= '0'
        if c<0 or c>9 then return false end if
        if even(i) then
            c *= 2
            if c>9 then c -= 9 end if
        end if
        checksum += c
    end for
    return rmdr(checksum,10)==0
end function

