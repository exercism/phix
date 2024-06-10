global function triangle(integer n)
    sequence res = {}
    for row=1 to n do
        sequence line = {1}
        for pos=1 to row-1 do
            line &= line[pos]*(row-pos)/pos
        end for
        res = append(res, line)
    end for
    return res
end function

