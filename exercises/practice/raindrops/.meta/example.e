global function raindrops(integer n)
    string res = ""
    for i,k in {3,5,7} do
        if rmdr(n,k)=0 then
            res &= sprintf("Pl%cng","iao"[i])
        end if
    end for
    if res="" then res = sprintf("%d",n) end if
    return res
end function

