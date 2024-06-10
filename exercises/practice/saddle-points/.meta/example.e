global function saddle(sequence m)
    integer h = length(m),
            w = length(m[1])
    sequence res = {},
         tallest = repeat(0,h),
        shortest = repeat(0,w)
    for i,r in m do
        for j,t in r do
            tallest[i] = max(tallest[i],t)
            if i=1 or shortest[j]>t then
                shortest[j] = t
            end if
        end for
    end for
    for i,r in m do
        for j,t in r do
            if t=tallest[i]
            and t=shortest[j] then
                res = append(res,{i,j})
            end if
        end for
    end for
    return res
end function

