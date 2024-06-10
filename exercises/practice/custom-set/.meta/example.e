--
-- Note the Phix distro contains builtins\sets.e, as used here, 
-- plus sets2.e and sets3.e - largely because I cannot decide
-- which is the best way to do it. Phix has far less need for
-- custom sets than some languages, since there'd be no issue 
-- at all with a set containing 1, "fine", 365.25, {`days`} 
-- as four of its members.
--

include builtins\sets.e

global function set_empty(sequence s)
    return is_empty(s)
end function

global function set_contains(sequence s, object x)
    return is_member(s,x)
end function

global function set_subset(sequence s, s2)
    return is_subset(s,s2)
end function

global function set_disjoint(sequence s, s2)
    return is_empty(intersection(s,s2))
end function

global function set_add(sequence s, object x)
    return sort(add_member(s,x))
end function

global function set_intersect(sequence s, s2)
    return intersection(s,s2)
end function

global function set_difference(sequence s, s2)
    return difference(s,s2,false)
end function

global function set_union(sequence s, s2)
    return sort(union(s,s2))
end function

