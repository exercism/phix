enum NAME, MP, WON, DREW, LOST, PTS -- (in the order needed for the final sprintf)

global function tally(sequence results)
    sequence teams = {} -- as per NAME etc
    for r in results do
        sequence r3 = split(r,";")
        assert(length(r3)=3)
        sequence names = vslice(teams,1),
                  idii = {find(r3[1],names),
                          find(r3[2],names)}
        for i,idx in idii do
            if idx=0 then
                teams = append(teams,{r3[i],0,0,0,0,0})
                idii[i] = length(teams)
            end if
        end for
        integer {i1,i2} = idii
        teams[i1][MP] += 1
        teams[i2][MP] += 1
        switch r3[3] do
            case "win": teams[i1][WON] += 1
                        teams[i2][LOST] += 1
                        teams[i1][PTS] += 3 
            case "loss":
                        teams[i2][WON] += 1
                        teams[i1][LOST] += 1
                        teams[i2][PTS] += 3 
            case "draw":
                        teams[i1][DREW] += 1
                        teams[i2][DREW] += 1
                        teams[i1][PTS] += 1 
                        teams[i2][PTS] += 1 
        end switch
    end for
    teams = sort_columns(teams,{-PTS,NAME})
    sequence res = { "Team                           | MP |  W |  D |  L |  P"}
    for t in teams do
        string line = sprintf("%-30s | %2d | %2d | %2d | %2d | %2d", t)
        res = append(res,line)
    end for
    return res
end function

