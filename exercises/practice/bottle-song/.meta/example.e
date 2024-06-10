
constant ns = {"no","One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"},
       hang = "%s green bottle%s hanging on the wall,",
       fall = "And if one green bottle should accidentally fall,",
       less = "There'll be %s green bottle%s hanging on the wall."

global function recite(integer start_bottles, takeDown)
    sequence res = {} string h, l
    for n=start_bottles to start_bottles-takeDown+1 by -1 do
        if n!=start_bottles then res = append(res,"") end if
        h := sprintf(hang,{ns[n+1],iff(n=1?"","s")})
        l := sprintf(less,{lower(ns[n]),iff(n=2?"":"s")})
        res &= {h,h,fall,l}
    end for
    return res
end function

