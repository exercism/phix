global function score_yacht(sequence roll, string category)
    integer score = 0
    if category[$]='s' then
        score = find(category,{"ones","twos","threes","fours","fives","sixes"})
        score = sum(sq_eq(roll,score))*score
    else
        roll = sort(deep_copy(roll))
        integer {c1,c2,c3,c4,c5} = roll
        if category="full house" then
            if (c1=c3 and c4=c5 and c3!=c4)
            or (c1=c2 and c3=c5 and c2!=c3) then
                score = sum(roll)
            end if
        elsif category="four of a kind" then
            if c2=c4 and (c1=c2 or c4=c5) then
                score = c3*4
            end if
        elsif category="little straight" then
            if roll={1,2,3,4,5} then
                score = 30
            end if
        elsif category="big straight" then
            if roll={2,3,4,5,6} then
                score = 30
            end if
        elsif category="choice" then
            score = sum(roll)
        elsif category="yacht" then
            if c1=c5 then
                score = 50
            end if
        else
            ?9/0
        end if
    end if
    return score
end function

