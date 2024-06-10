global function tick(sequence matrix)
    if equal(matrix,{}) then return matrix end if
    integer w = length(matrix[1]),
            h = length(matrix)
    sequence next = repeat(repeat(0,w),h)
    for x=1 to w do
        for y=1 to h do
            integer mxy = matrix[x][y], nxy = -mxy
            -- count neighbours (w/o exceeding edges)
            for i=x-(x>1) to x+(x<w) do
                for j=y-(y>1) to y+(y<h) do
                    nxy += matrix[i][j]
                end for
            end for
            next[x][y] = nxy==3 or (mxy and nxy==2)
        end for
    end for
    return next
end function

