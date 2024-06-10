global function say(atom n)
    return substitute_all(ordinal(n,true),{" and",","},{"",""})
end function

