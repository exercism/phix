global function egg_count(atom n) 
    -- using Kernigans bit counter
    integer res = 0
    while n do
        n &&= n-1
        res += 1
    end while
    return res
--  return count_bits(n) -- the one thing you're not allowed to do!
end function

