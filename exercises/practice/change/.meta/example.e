global function change(sequence coins, integer target, skip=0, bsf=0)
    if target=0 then return {} end if
    if skip = 0 then bsf = ceil(target/coins[1]) end if
    object res = false
    for coin=length(coins)-skip to 1 by -1 do
        integer cc = coins[coin], n = floor(target/cc)
        if n>bsf then exit end if
        while n>0 do
            object r = change(coins,target-n*cc,skip+1,bsf-n)
            if sequence(r) 
            and (atom(res) or length(res)>length(r)+n) then
                res = r & repeat(cc,n)
                bsf = length(res)
            end if
            n -= 1
        end while
        skip += 1
    end for
    return res
end function

