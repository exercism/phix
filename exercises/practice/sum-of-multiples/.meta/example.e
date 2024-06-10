
// summ calculates the sum of multiples of elements of f that are (>0 and) < lim.
// implements the inclusion-exclusion principle, by negating (to d) and multiplying 
// each factor just processed by anything later on (via k) in f. For example with
// factors {5,6,7} it will recusively +(5)-(5,6)+(5,6,7)-(5,7)+(6)-(6,7)+(7).
// A few recursive calls can be alot faster than who-knows-how-many divides, but
// when there are too many permutations a brute force approach will be quicker.

local function summ(sequence f, atom lim, d=1, k=1, res=0)
    --
    -- I trust the initial res=0 and k=1 (aka idx) make sense, 
    -- with d initially +1 for add all, then flipping sign to
    -- alternately add/subtract the right number of subsequent 
    -- recursive sets, as per inclusion-exclusion principle.
    --
    for i,m in f from k do
        if m then
            m = m/gcd(m,abs(d))*d
            integer n = floor((lim-1)/abs(m))
            res += m*n*(n+1)/2
            res = summ(f,lim,-m,i+1,res)
        end if
    end for
    return res
end function

global function sum_of_multiples(sequence f, integer lim)
    if factorial(length(f))<lim/25 then
        --
        -- For a small number of factors and hence a small 
        -- number of permutations, the above summ() trounces 
        -- a brute force attack, but with more permutations
        -- the brute force approach will end up being faster. 
        -- The /25 is just a wild stab at how many iterations 
        -- equate to a recursive call, which obviously has to
        -- create_frame/populate/call/cleanup/ret, and if you 
        -- really cared you'd experiment to find best ratio,
        -- which could feasibly be closer to 1, or length(f).
        -- For the tests used, summ() reduces the total time 
        -- taken from around 37.5s to 1.5s, on my box anyway,
        -- and in fact the last-but-one test, which don't use 
        -- this anyway, accounts for almost all of that 1.5s.
        --
        return summ(f,lim)
    end if
    -- brute force approach (as above sometimes simply faster):
    atom res = 0
    for n=1 to lim-1 do
        for k in f do 
            if k!=0 and rmdr(n,k)=0 then
                res += n
                exit
            end if
        end for
    end for
    return res
end function


