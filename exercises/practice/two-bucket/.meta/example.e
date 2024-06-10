sequence seen -- grid of bools keyed on curent contents
integer goal, s1, s2 -- target and bucket sizes

function solve_rec(integer c1, c2, steps)
    -- c1 and c2 are the current contents of the buckets
    -- used to index seen, and steps is a simple counter
    object soln = false
    if not seen[c1+1,c2+1] then
        if c1=goal then return {"one",steps,c2} end if
        if c2=goal then return {"two",steps,c1} end if
        integer a1 = min(c1,s2-c2),
                a2 = min(c2,s1-c1)
        sequence actions = {{a1>0,c1-a1,c2+a1}, -- pour b1 into b2?
                            {a2>0,c1+a2,c2-a2}, -- pour b2 into b1?
                            {c1=s1,0,c2},       -- empty b1?
                            {c2=s2,c1,0},       -- empty b2?
                            {c1=0,s1,c2},       -- fill b1?
                            {c2=0,c1,s2}}       -- fill b2?
        seen[c1+1,c2+1] = true
        for i,a in actions do
            if a[1] then
                object r = solve_rec(a[2],a[3],steps+1)
                if sequence(r) and (atom(soln) or soln[2]>r[2]) then
                    soln = r
                end if
            end if
        end for
        seen[c1+1,c2+1] = false
    end if
    return soln
end function

global function solve(integer sizeBucketOne, sizeBucketTwo, goalAmount, string startBucket)
    seen = repeat(repeat(false,sizeBucketTwo+1),sizeBucketOne+1)
    integer c1=0, c2=0
    if startBucket="one" then
        c1 = sizeBucketOne
        seen[1,sizeBucketTwo+1] = true -- (mark illegal)
    else
        c2 = sizeBucketTwo
        seen[sizeBucketOne+1,1] = true -- (mark illegal)
    end if
    {goal,s1,s2} = {goalAmount,sizeBucketOne,sizeBucketTwo}
    object res = solve_rec(c1,c2,1)
    if not sequence(res) then
        res = "impossible"
    end if
    return res
end function

