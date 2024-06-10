global function primes(integer limit)
    sequence sieve = repeat(0,limit), res = {}
    integer pm = 1
    for p=2 to limit do
        if sieve[p]=0 then
            res &= p
            for i=p*p to limit by p*pm do
                sieve[i] = 1
            end for
            pm = 2
        end if
    end for
    return res
end function

