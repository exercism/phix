local function chain_wrec(sequence res, dominoes, used, integer start, next, remain)
    if remain==0 then return {res, start==next} end if
    bool bStart = start == -1
    for i,d in dominoes do
        if not used[i] then
            used = deep_copy(used)
            used[i] = true
            for flip=0 to 1 do
                integer dj = d[1+flip], dk = d[2-flip]
                if dj==next or bStart then
                    if bStart then start = dj end if
                    {object chain, bool ok} = chain_wrec(res&{{dj,dk}},dominoes,used,start,dk,remain-1)
                    if ok then return {chain, ok} end if
                end if
            end for
            used[i] = false
        end if
    end for
    return {null,false}
end function

global function make_chain(sequence dominoes)
    integer l = length(dominoes)
    if l=0 then return {null,true} end if // stupid test
    return chain_wrec({},dominoes,repeat(false,l),-1,0,l)
end function

