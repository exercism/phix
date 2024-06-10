constant dpa = {"deficient","perfect","abundant"}

global function classify(integer n)
    return iff(n<1?0:dpa[compare(sum(factors(n))+(n!=1),n)+2])
--/*
    if n<1 then return false end if
    integer i = 2, try_max = floor(n/2), fsum = n>1
    while i<try_max do
        if rmdr(n,i)=0 then
            try_max = n/i
            fsum += i;
            if i!=try_max then fsum += try_max end if
        end if
        i += 1
    end while
--  return dpa[compare(fsum,n)+2]
    switch compare(fsum,n) do
        case -1: return "deficient"
        case  0: return "perfect"
        case +1: return "abundant"
    end switch
--*/
end function


