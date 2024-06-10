global function annotate(sequence board)
    integer h = length(board)
    sequence res = repeat(0,h)
    if h then
        integer w = length(board[1])
        for y,line in board do
            string outline = ""
            for x,ch in line do
                if ch!='*' then
                    integer m = 0
                    for i=y-(y>1) to y+(y<h) do
                        for j=x-(x>1) to x+(x<w) do
                            m += board[i][j]=='*'
                        end for
                    end for
                    if m then ch = '0'+m end if
--                  if m and m!=3 then ch = '0'+m end if
                end if
                outline &= ch
            end for
            res[y] = outline
        end for
    end if
    return res
end function

