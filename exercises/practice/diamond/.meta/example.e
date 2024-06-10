global function diamond(integer letter)
    integer m = letter-'A'+1, l = 2*m-1
    sequence res = {}
    for ch='A' to letter do
        res &= {reinstate(repeat(' ',l),{m,-m},ch)}
        m -= 1
    end for
    res &= reverse(res[1..$-1])
    return res
end function

