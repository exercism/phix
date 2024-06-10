global type queen(string posn)
    return length(posn)=2
       and posn[1]>='a' and posn[1]<='h'
       and posn[2]>='1' and posn[2]<='8'
end type

global function can_attack(queen white, black)
    if white=black then return "same square!" end if
    integer cd = white[1] - black[1],
            rd = white[2] - black[2]
    return cd == 0 or rd == 0 or cd*cd == rd*rd
end function

