global function spiral_matrix(integer size)
    integer x = 1, y = 0, counter = 1, 
           dx = 0, dy = 1, len = size 
    sequence m = repeat(repeat(0,size),size)
    for i=1 to 2*size do        -- 2n runs..
        for j=1 to len do       -- of a length...
            x += dx
            y += dy
            m[x][y] = counter
            counter += 1
        end for
        len -= odd(i)           -- ..-1 every other 
        {dx,dy} = {dy,-dx}      -- in new direction
    end for
    return m 
end function

