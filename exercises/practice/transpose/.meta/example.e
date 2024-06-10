global function transpose(sequence m)
    sequence res = {}
    for i,line in m do
        for j,ch in line do
            if j>length(res) then
                res = append(res,repeat(' ',i-1)&ch)
            else
                integer lj = length(res[j])
                if i>lj-1 then
                    res[j] = res[j]&repeat(' ',i-lj-1)&ch
                else
                    res[j] &= ch
                end if
            end if
        end for
    end for
    return res
end function

