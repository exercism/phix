constant lv = sq_sub("1332142418513113:11114484:",'0')
--------------------- ABCDEFGHIJKLMNOPQRSTUVWXYZ

global function score(string word)
    return sum(extract(lv,sq_sub(upper(word),'A'-1)))
end function

