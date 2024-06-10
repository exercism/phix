global function transform(sequence legacy)
    sequence res = {}
    for l in legacy do
        {integer v, string s} = l
        for ch in lower(s) do
            res = append(res, {ch,v})
        end for
    end for
    res = sort(res)
    return res
end function

