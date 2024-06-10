global function get_factors(atom n)
    if n=1 then return {} end if // (the builtin returns {1})
    return prime_factors(n,true,-1)
end function

