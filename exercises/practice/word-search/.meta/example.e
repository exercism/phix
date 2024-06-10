global function locate(sequence words, puzzle)
    sequence res = repeat({{0,0},{0,0}},length(words))
    integer w = length(puzzle[1]),
            h = length(puzzle),
            not_found = 0
    for i,wd in words do
        integer c1 = wd[1], l = length(wd)
        bool found = false
        for sy=1 to h do
            for sx=1 to w do
                if puzzle[sy][sx]=c1 then
                    for dxy in {{-1,-1},{0,-1},{1,-1},
                                {-1, 0},       {1, 0},
                                {-1,+1},{0,+1},{1,+1}} do
                        integer {dx,dy} = dxy,
                                ex = sx+dx*(l-1),
                                ey = sy+dy*(l-1)
                        if ex>=1 and ex<=w and
                           ey>=1 and ey<=h then
                            bool ok = true
                            for j=2 to l do
                                integer jy = sy+(j-1)*dy,
                                        jx = sx+(j-1)*dx,
                                        wch = wd[j], 
                                        pch = puzzle[jy][jx]
                                if pch!=wch then
                                    ok = false
                                    exit
                                end if
                            end for
                            if ok then
                                res[i] = {{sx,sy},{ex,ey}}
                                found = true
                            end if
                        end if  
                    end for
                end if
            end for
        end for
        if not found then not_found += 1 end if
    end for
    return {not_found,res}
end function

