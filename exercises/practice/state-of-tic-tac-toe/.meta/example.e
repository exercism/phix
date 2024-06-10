constant wins = {1,2,3,4,5,6,7,8,9,1,4,7,2,5,8,3,6,9,1,5,9,3,5,7}

global function check_state(sequence board)
    board = join(board,{})
    integer oWin = false, xWin = false,
            x = sum(sq_eq(board,'X')),
            o = sum(sq_eq(board,'O'))
    for w=1 to length(wins) by 3 do
        integer mark = board[wins[w]]
        if mark>'.' 
        and mark=board[wins[w+1]] 
        and mark=board[wins[w+2]] then
            if mark='O' then oWin = true end if
            if mark='X' then xWin = true end if
        end if
    end for
    if x<o or x>o+1 
    or (oWin and xWin) then return "invalid" end if
    if oWin or xWin then return "win" end if
    if x==5 then return "draw" end if
    return "ongoing"
end function

