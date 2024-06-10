global type reactor(object r)
    // primary purpose: keep a list of callbacks and invoke them on updated cells
    crash("please implement the reactor type")
end type

global type cell(object c)
    // primary purpose: hold value, trigger reactor when changed
    crash("please implement the cell type")
end type

global type canceler(object c)
    // primary purpose: remove an element of reactor efficiently
    crash("please implement the canceler type")
end type

global function new_reactor()
    crash("Please implement new_reactor")
end function

global function create_input(reactor r, integer v)
    crash("Please implement create_input")
end function

global procedure cancel(canceler c)
    crash("Please implement cancel")
end procedure

global function get_value(cell c)
    crash("Please implement get_value")
end function

global procedure set_value(cell c, integer v)
    crash("Please implement set_value")
end procedure

global function add_callback(cell c, integer fn, sequence args={0})
    crash("Please implement add_callback")
end function

global function create_compute(reactor r, lambda l)
    // aside: create_compute1/2 should return a result from this, also used by tests
    //        to create a calculated cell where one of the args is a fixed integer.
    crash("Please implement create_compute")
end function

global function create_compute1(reactor r, cell dep, integer fn)
    crash("Please implement create_compute1")
end function

global function create_compute2(reactor r, cell dep1, dep2, integer fn)
    crash("Please implement create_compute2")
end function

