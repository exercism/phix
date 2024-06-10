sequence rolls
integer pincount, frames, state, bonus
enum NEWFRAME, SECONDGO, GAMEOVER

global procedure new_game()
    rolls = {}
    pincount = 10
    frames = 0
    state = NEWFRAME
    bonus = 0
end procedure

global function roll(integer pins)
    // returns true on success, a string on error
    if pins<0 then
        return "invalid"
    elsif state=GAMEOVER then
        return "game over"
    elsif pins>pincount then
        return "exceeds pins"
    end if
    rolls &= pins
    pincount -= pins
    if bonus then
        bonus -= 1
        if bonus==0 then
            state = GAMEOVER
        elsif pincount==0 then
            pincount = 10
        end if
    elsif pincount==0 
       or state==SECONDGO then
        frames += 1
        if frames==10 then
            if state==NEWFRAME then // strike
                bonus = 2
            elsif pincount==0 
              and state==SECONDGO then // spare
                bonus = 1
            else
                state = GAMEOVER
            end if
        else
            state = NEWFRAME
        end if
        pincount = 10
    elsif state==NEWFRAME then
        state = SECONDGO
    else
        state = NEWFRAME
        frames += 1
        if frames==10 then
            state = GAMEOVER
        else
            pincount = 10
        end if
    end if
    return true
end function

global function score()
    // returns integer on success, {int, str} on error
--  if state!=GAMEOVER then
--      return "game not over"
--  end if
    integer score = 0, framedx = 1,
            l = length(rolls)
    for frame=1 to 10 do
        if framedx+1>l then
            return {score,"game not over"}
        end if
        integer first = rolls[framedx],
                pair = first + rolls[framedx+1]
        if pair>=10 then // strike or spare
            if framedx+2>l then
                return {score,"game not over"}
            end if
            pair += rolls[framedx+2]
        end if
        score += pair
        framedx += iff(first=10?1:2)
    end for
    return score
end function

