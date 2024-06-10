constant PLANTS = {"clover","grass","radishes","violets"}

global function plants(string garden, student)
    integer sdx = (student[1]-'A')*2+1
    sequence res = {}
    for k in {0,find('\n',garden)} do
        for l=k to k+1 do
            integer plant = garden[l+sdx],
                      pdx = find(plant,"CGRV")
            res = append(res,PLANTS[pdx])
        end for
    end for
    return res
end function

