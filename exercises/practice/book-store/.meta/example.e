
-- despite any apparent simplicity, this is a brute-force full depth search.

constant knownsets = new_dict()

local function find_best_cost(sequence counts, integer minmask=0b00001)
    counts = sort(deep_copy(counts)) -- see notes
    if getd_index(counts,knownsets)!=NULL then
        return getd(counts,knownsets)
    end if
    integer availmask = 0 -- 0b00000 .. 0b11111
    for i,v in counts do
        if v>0 then availmask += 1<<(i-1) end if
    end for
    integer best_cost = sum(counts)*800 -- default to no discount
    if count_bits(availmask)>1 then -- (actually not strictly necessary)
        for mask=minmask to 0b11111 do  -- try taking every permissible set
            if (mask&&availmask)==mask  -- quickly skip all impossibles
            and count_bits(mask)>1 then -- and pointless recursions (nsn)
                sequence newcounts = deep_copy(counts) -- damage not counts
                for i=1 to 5 do
                    if mask&&(1<<(i-1)) then newcounts[i] -= 1 end if
                end for
                integer setcount = count_bits(mask),
                        discount = {0,5,10,20,25}[setcount],
                        restcost = find_best_cost(newcounts,mask),
                        thiscost = 800*setcount*(100-discount)/100
                best_cost = min(best_cost, restcost+thiscost)
            end if
        end for
    end if
    setd(counts,best_cost,knownsets)
    return best_cost
end function

-- Notes:
-- The inital sort(counts), which has a deep_copy purely for JavaScript compatibility,
-- effects at least a ten-fold improvement on cache hits, and in fact the cache ends
-- up with just 301 entries with it, vs 3563 without. A lesser and more subtle effect
-- is that it prevents cases where low sets are only first encountered after low masks 
-- have already been excluded, leaving invalid entries in knownsets for later tests.
-- (To clarify, any lone test would work fine, but some pairings of them just won't,
--  and we would rather not have to discard the contents of the cache b4 every test.)
-- In truth, however, minmask saves very little, and it still works fine without both
-- minmask and minmask+sort (but not -sort+minmask), albeit a fair smidge slower.
-- Likewise the two count_bits()>1 don't actually save anything measurable.
-- PS I trust it is patently clear cost(counts) is always === cost(sort(counts))

global function Cost(sequence books)
    sequence counts = repeat(0,5)
    for b in books do counts[b] += 1 end for
    return find_best_cost(counts)
end function

--/* Slightly better
--   ===============
--
-- Notes:
-- The inital sort this time effects at least a 50-fold improvement on cache hits, and
-- in fact knownsets cache ends up with just 68 entries, vs 301 using the method above,
-- which makes this almost identical performancewise to the cheaty [3,4,5]+=-1,+2,-1!!
-- By always taking the book(s) you have the most of first, you ensure recursive calls 
-- can still make the largest sets theoretically possible with the rest.
-- Disclaimer: I didn't invent this method, I found it in the Go community solutions.

-- Despite any apparent simplicity, this is a brute-force full depth search.

constant prices = {800, 1520, 2160, 2560, 3000}

constant knownsets = new_dict()

local function lowest_cost(sequence counts)
    counts = sort(deep_copy(counts),DESCENDING)
    if getd_index(counts,knownsets)!=NULL then
        return getd(counts,knownsets)
    end if
    integer price = sum(counts)*prices[1] -- default to no discount
    sequence new_counts = deep_copy(counts) -- (damage not counts)
    for i,c in new_counts do
        if c == 0 then exit end if
        new_counts[i] = c-1
        price = min(price,prices[i] + lowest_cost(new_counts))
    end for
    setd(counts,price,knownsets)
    return price
end function

global function Cost(sequence books)
    sequence counts = repeat(0,5)
    for b in books do counts[b] += 1 end for
    return lowest_cost(counts)
end function
--*/

--/* cheatly hack:
--   ============

-- Despite appearances, this won't work with other discount structures!

global function Cost(sequence basket)
    sequence sets = repeat(0,5)
    for b in basket do sets[b] += 1 end for
    sets = sort(sets,DESCENDING)
    sets[1..4] = sq_sub(sets[1..4],sets[2..5])
    integer m = min(sets[3],sets[5])
    sets = sq_add(sets,{0,0,-m,2*m,-m})
    return sum(sq_mul(sets,{800,1520,2160,2560,3000}))
end function
--*/

