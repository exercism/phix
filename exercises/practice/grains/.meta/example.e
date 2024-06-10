--
-- Version 1, using native atoms (80-bit, with 64 bits of precision)
-- =================================================================
--/*
requires(64) -- does not work on 32-bit: versions 2 & 3 below /do/.
             -- note that under -nopause this will automatically
             -- re-run using a 64-bit Phix if it can find one, and
             -- hence may seem to work under 32-bit, but it don't,
             -- at least not really.

global function square(integer n)
    return iff(n<1 or n>64 ? "square must be between 1 and 64" : power(2,n-1))
end function 

global function totalgrains() 
    return power(2,64)-1
end function 
--*/

--
-- Version 2, using mpfr & returning strings
-- =========================================
--/!*
include mpfr.e

global function square(integer n)
    if n<1 or n>64 then 
        return "square must be between 1 and 64" 
    end if 
    mpz z = mpz_init(1)
    mpz_mul_2exp(z,z,n-1)
    return mpz_get_str(z)
end function 

global function totalgrains() 
    mpz z = mpz_init(1)
    mpz_mul_2exp(z,z,64)
    mpz_sub_si(z,z,1)
    return mpz_get_str(z)
end function 
--*!/

--
-- Version 3, building strings manually
-- ====================================
--/*
local function power2(integer n, m1=0)
    --
    -- return 2^n, optionally minus 1, as a string.
    -- no limits on n other than available memory.
    --  (any n<0 would be treated as 0 here btw)
    -- 
    string res = "1" -- (built lsb-first)
    for p=1 to n do -- res := res*2, n times,
                   -- nb that res is a string.
        integer carry = 0
        for i=1 to length(res) do
            integer digit = (res[i]-'0')*2+carry
            res[i] = rmdr(digit,10)+'0'
            carry = floor(digit/10)
        end for
        if carry then
            res &= carry+'0' -- (eg "8"->"6"->"61")
        end if
    end for
    res = reverse(res) -- (==> msb-first)
    if m1 then
        -- last digit is always one of 1/2/4/6/8,
        --  so no need to fret about carry, etc.
        res[$] -= 1
    end if
    return res
end function

global function square(integer n)
    if n<1 or n>64 then 
        return "square must be between 1 and 64" 
    end if 
    return power2(n-1)
end function 
 
global function totalgrains() 
    return power2(64,-1)
end function 
--*/

