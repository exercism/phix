global function result_of(sequence board)
    integer h = length(board),
            w = length(board[1])
    do
        bool advancing = false
        --
        -- successively replace O/X with o/x if top/left or
        -- has o/x neighbour, until reaching bottom/right.
        --
        for y=1 to h do
            for x=1 to w do
                integer ch = board[y][x]
                if ch='O' or ch='X' then
                    ch += 32 // lower(ch)
                    bool advance = (ch='o' and y=1) or
                                   (ch='x' and x=1)
                    integer dx = -1, dy = 0
                    while dx<2 and not advance do
                        integer r = y+dy, c = x+dx
                        advance = r>=1 and r<=h and dx!=dy and
                                  c>=1 and c<=w and board[r][c]=ch
                        {dx,dy} = iff(dy<1?{dx,dy+1}:{dx+1,-1})
                    end while
                    if advance then
                        if ch='o' and y=h then return "O" end if
                        if ch='x' and x=w then return "X" end if
                        board[y][x] = ch
                        advancing = true
                    end if
                end if
            end for
        end for
    until not advancing
    return ""
end function

