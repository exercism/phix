
global sequence list = {}

global procedure list_push(object x)
    -- add x to the end of list
    list = append(list,x)
end procedure

global function list_pop()
    -- remove the last item from list and return it
    if length(list)=0 then return "list empty" end if
    object res = list[$]
    list = list[1..$-1]
    return res
end function

