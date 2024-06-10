sequence reactors = {},
         cells = {}
--enum CELL, FN, ARGS, PREV     -- reactors (implicit)
enum VALUE, REACTOR         -- cells
enum TAG, IDX, RDX  -- (for the next three types)

global type reactor(sequence r)
    // primary purpose: keep a list of callbacks and invoke them on updated cells
    return length(r)=2 and r[TAG]=="reactor" and valid_index(reactors,r[IDX])
end type

global type cell(sequence c)
    // primary purpose: hold value, trigger reactor when changed
    return length(c)=2 and c[TAG]=="cell" and valid_index(cells,c[IDX])
end type

global type canceler(sequence c)
    // primary purpose: remove an element of reactor efficiently
    return length(c)=3 and c[TAG]=="canceler" and valid_index(reactors,c[RDX])
                                              and valid_index(reactors[c[RDX]],c[IDX])
end type

global function new_reactor()
    reactors = append(reactors,{}) -- CELL,FN,ARGS,PREV
    return {"reactor",length(reactors)}
end function

local function add_cell(reactor r, object v)
    cells = append(cells,{v,r}) -- {VALUE,REACTOR}
    return {"cell",length(cells)}
end function

global function create_input(reactor r, integer v)
    return add_cell(r,v)
end function

global procedure cancel(canceler c)
    reactors[c[RDX]][c[IDX]] = NULL
end procedure

global function get_value(cell c)
    object cv = cells[c[IDX]][VALUE]
    return iff(integer(cv)?cv:call_lambda(cv))
end function

local procedure update(reactor r)
    integer rdx = r[IDX]
    for cfap in reactors[rdx] do
        if cfap!=NULL then
            {cell c, integer fn, sequence args, integer prev} = cfap
            integer v = get_value(c)
            if v!=prev then
                if args={0} then args = {v} end if
                call_proc(fn,args)
            end if
        end if
    end for
end procedure

global procedure set_value(cell c, integer v)
    integer cdx = c[IDX],
            prev = cells[cdx][VALUE]
    if v!=prev then
        cells[cdx][VALUE] = v
        update(cells[cdx][REACTOR])
    end if
end procedure

global function add_callback(cell c, integer fn, sequence args={0})
    reactor r = cells[c[IDX]][REACTOR]
    integer rdx = r[IDX]
    reactors[rdx] = append(reactors[rdx],{c,fn,args,get_value(c)}) -- CELL,FN,ARGS,PREV
    integer idx = length(reactors[rdx])
    return {"canceler",idx,rdx}
end function

global function create_compute(reactor r, lambda l)
    return add_cell(r,l)
end function

global function create_compute1(reactor r, cell dep, integer fn)
    nested function compute1(integer fn, cell dep)
        return fn(get_value(dep))
    end nested function
    return create_compute(r,define_lambda(compute1,{fn,dep}))
end function

global function create_compute2(reactor r, cell dep1, dep2, integer fn)
    nested function compute2(integer fn, cell dep1, dep2)
        return fn(get_value(dep1),get_value(dep2))
    end nested function
    return create_compute(r,define_lambda(compute2,{fn,dep1,dep2}))
end function

