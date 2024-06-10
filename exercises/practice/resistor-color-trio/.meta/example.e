constant colours = {"black","brown","red","orange","yellow","green","blue","violet","grey","white"},
             kmg = {"","kilo","mega","giga"}

global function label(sequence colors)
    -- returns eg "33 ohms" or "470 kiloohms"
    integer v = find(colors[1],colours)-1,
            w = find(colors[2],colours)-1,
            k = find(colors[3],colours)-1
    if w==0 and v!=0 then
        k += 1
    else
        v = v*10+w
    end if
    return sprintf("%d%s %sohms",{v,repeat('0',rmdr(k,3)),kmg[floor(k/3)+1]})
end function

