constant mp = new_dict() -- keys 'A'..'Z', values 0..9
sequence front, -- 1 if wordstart, else 0, for (0|1)..9
         multh, -- multiplier hash, see below
         used

-- mp ends up holding the (first) acceptable solution.
-- Letters which start any word cannot be 0 (in the rules).
-- In SEND+MORE=MONEY, 'E' is 100 + 1 - 10 = 91 from the 
-- three places E occurs in the puzzle, stored in multh.
-- Hence sum(letter_values*multh)==0 means it is solved.
-- Obviously used stops us using digits more than once.

function solve_rec(string uniq, int i, atom s)
    -- Aside: integer s is fine on 64-bit, but reaches
    --  a high of 13,304,757,742 & crashes on 32-bit.
    if i > length(uniq) then return s==0 end if
    integer chdx = uniq[i]-'A'+1
    for v=front[chdx] to 9 do
        if not used[v+1] then
            used[v+1] = true
            if solve_rec(uniq,i+1,s+v*multh[chdx]) then 
                setd(chdx,v,mp)
                return true
            end if
            used[v+1] = false
        end if
    end for
    return false
end function

global function Solve(string puzzle)
    destroy_dict(mp,true) -- empty, but keep
    used = repeat(false,10) -- nb [1..10] for 0..9
    multh = repeat(0,26) -- see above
    front = repeat(0,26) -- 1 if 1st in any word
    string uniq = ""
    sequence words = split_any(puzzle," +=")
    for iw,word in words do
        front[word[1]-'A'+1] = 1
        integer l = length(word),
                m = iff(iw=length(words)?-1:+1)
        for i,ch in word do
            multh[ch-'A'+1] += m*power(10,l-i)
            if not find(ch,uniq) then
                uniq &= ch
                setd(ch-'A'+1,-1,mp)
            end if
        end for
    end for
    if not solve_rec(uniq,1,0) then
        return "no solution"
    end if
    for i,ch in puzzle do
        if ch>='A' and ch<='Z' then
            puzzle[i] = getd(ch-'A'+1,mp)+'0'
        end if
    end for
    return puzzle
end function

