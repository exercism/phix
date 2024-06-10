global function sublist(sequence s1, s2)
    -- returns "equal"/"sublist"/"superlist"/"unequal"
    if s1=s2 then
        return "equal"
    elsif length(s1)=0 or match(s1,s2) then
        return "sublist"
    elsif length(s2)=0 or match(s2,s1) then
        return "superlist"
    end if
    return "unequal"
end function

