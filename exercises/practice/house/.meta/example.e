constant things = {{"house that Jack built.","lay in"},
                   {"malt","ate"},{"rat","killed"},
                   {"cat","worried"},{"dog","tossed"},
                   {"cow with the crumpled horn","milked"},
                   {"maiden all forlorn","kissed"},
                   {"man all tattered and torn","married"},
                   {"priest all shaven and shorn","woke"},
                   {"rooster that crowed in the morn","kept"},
                   {"farmer sowing his corn","belonged to"},
                   {"horse and the hound and the horn"}}

global function verse(integer v)
    sequence res = {sprintf("This is the %s",things[v][1])}
    for i=v-1 to 1 by -1 do
        string {t,verb} = things[i],
        line = sprintf("that %s the %s",{verb,t})
        res = append(res,line)  
    end for
    return res
end function

global function song()
    sequence res = {}
    for v=1 to length(things) do
        res &= verse(v) & {""}
    end for
    return res
end function

