global function prime(integer n)
    // first, deal with the obligatory daft test (it's a muppet/in the canonical data)
    if n=0 then return "there is no zeroth prime" end if
    return get_prime(n)
end function

