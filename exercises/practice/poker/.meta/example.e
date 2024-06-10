local function poker(string hand)
    // returns string on error, sortable ranking otherwise
    sequence cards = split(substitute(hand,"10","T")),
             ranks = repeat(0,13),
             suits = repeat(0,4)
    if length(cards)!=5 then return "invalid hand" end if
    for ci in cards do
        if length(ci)!=2 then return "invalid hand" end if
        integer rank = find(ci[1],"23456789TJQKA"),
                suit = find(ci[2],"HCDS")
        if rank=0 or suit=0 then return "invalid hand" end if
        ranks[rank] += 1
        suits[suit] += 1
    end for
    integer maxranks = max(ranks),
            high_card = rfind(1,sq_ne(ranks,0)),
            rank1 = find(1,ranks),
            pair = find(2,ranks),
            two_pair = find(2,ranks,pair+1),
            rank3 = find(3,ranks)
    bool straight = match({1,1,1,1,1},ranks) or
      (maxranks=1 and match({0,0,0,0,0,0,0,0},ranks)=5),
         is_flush = max(suits)==5,
         full_house = maxranks=3 and pair
    if straight and ranks[1]!=0 then 
        high_card = find(0,ranks)
    end if
    sequence rr = reverse(ranks)
    if maxranks=5               then return {10,"five of a kind", find(5,ranks)} end if
    if straight and is_flush    then return {9,"straight flush", high_card} end if
    if maxranks=4               then return {8,"four of a kind", find(4,ranks),rank1} end if
    if full_house               then return {7,"full house", rank3,pair} end if
    if is_flush                 then return {6,"flush", high_card, rr} end if
    if straight                 then return {5,"straight", high_card} end if
    if maxranks=3               then return {4,"three of a kind", rank3,rr} end if
    if pair and two_pair        then return {3,"two pair", two_pair,pair,rank1} end if
    if pair                     then return {2,"one pair", pair, rr} end if
                                     return {1,"high card",high_card,rr}
end function
 
global function best_hand(sequence hands)
    sequence best, res = {}
    for h in hands do
        sequence rank = poker(h)
        if string(rank) then return rank end if
        if res=={} or rank>best then
            res = {h}
            best = rank
        elsif rank==best then
            res = append(res,h)
        end if
    end for
    return res
end function

