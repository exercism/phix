global function distance(sequence left, right)
    if length(left)!=length(right) then 
        return "strands must be of equal length"
    end if
    return sum(sq_ne(left,right))
end function

