global function knapsack(sequence items, integer max_weight, wsf=0, vsf=0, ndx=1)
    -- return the maximum value of items <= max_weight
    -- wsf is weight_so_far, vsf is value_so_far, ndx is next items[] to try.
    if ndx<=length(items) then
        integer {w,v} = items[ndx],
                 vwwo = knapsack(items,max_weight,wsf,vsf,ndx+1)
        if wsf+w<=max_weight then
            vwwo = max(vwwo,knapsack(items,max_weight,wsf+w,vsf+v,ndx+1))
        end if
        vsf = max(vsf,vwwo)
    end if
    return vsf
end function

