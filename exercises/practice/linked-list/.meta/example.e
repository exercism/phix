global sequence list = {}

global procedure list_push(object x)
    -- insert x at the back of list
--  crash("please implement list_push")
    list = append(list,x)
end procedure

global function list_pop()
    -- remove the last item from the list and return it
--  crash("please implement list_pop")
    object res = list[$]
    list = list[1..$-1]
    return res
end function

global procedure list_unshift(object x)
    -- insert x at the front of the list.
--  crash("please implement list_unshift")
    list = prepend(list,x)
end procedure

global function list_shift()
    -- remove and return an item from the front of the list
--  crash("please implement list_shift")
    object res = list[1]
    list = list[2..$]
    return res
end function

global procedure list_clear()
    -- clear/empty the list
--  crash("please implement list_clear")
    list = {}
end procedure

global function list_count()
    -- return the numer of items in the list
--  crash("please implement list_count")
    return length(list)
end function

global procedure list_remove(object x)
    -- remove the first instance of x from list, if present
--  crash("please implement list_remove")
    integer k = find(x,list)
    if k then list[k..k] = {} end if
end procedure

