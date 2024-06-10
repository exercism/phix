-- pre-lambda version, with matching tests, preserved for posterity

--MAYBE:
-- You should accept and embrace that this exercise is partially about dealing with a
-- vague or incomplete specification, something you will encounter in the real world.

-- The Go solution turned out remarkably elegant, and in fact or at least in my eyes
-- moreso than any other community solution out there. I even wondered if the original
-- was that elegant(/trivial) but contestants were struggling with the "mind-reading"
-- part, but no, my answer is 8/13ths the size and still just way better. 
-- Maybe I should also back-port my Go solution to Phix, using define_lambda()??? [DONE]

sequence reactors = {},
         cells = {}
--enum CELL, FN, ARGS, PREV                     -- reactors
enum VALUE, CALCULATED, REACTOR, FN, DEP1, DEP2 -- cells
--enum IDX, RDX                                 -- cancelers (aka posn, *reactor)
enum C1, C1i, C2    -- three types of calculated cells (plus false)

enum TAG,IDX,RDX    -- (for the next three types)

type reactor(sequence r)
    // primary purpose: keep a list of callbacks and invoke them on updated cells
--  crash("please implement the reactor type")
    return length(r)=2 and r[TAG]=="reactor" and valid_index(reactors,r[IDX])
end type

type cell(sequence c)
    // primary purpose: hold value, trigger reactor when changed
--  crash("please implement the cell type")
    return length(c)=2 and c[TAG]=="cell" and valid_index(cells,c[IDX])
--  return length(c)=2 and reactor(c[REACTOR]) and integer(c[VALUE])
end type

type canceler(sequence c)
    // primary purpose: remove an element of reactor efficiently
--  crash("please implement the canceler type")

    return length(c)=3 and c[TAG]=="canceler" and valid_index(reactors,c[RDX])
                                              and valid_index(reactors[c[RDX]],c[IDX])
end type

function new_reactor()
    reactors = append(reactors,{}) -- CELL,FN,ARGS,PREV
    integer rdx = length(reactors)
    return {"reactor",rdx}
--  crash("Please implement new_reactor")
end function

function create_input(reactor r, integer v, calc=false, fn=0, object d1=0, d2=0)
    cells = append(cells,{v,calc,r,fn,d1,d2}) -- {VALUE,CALCULATED,REACTOR,FN,DEP1,DEP2}
    integer cdx = length(cells)
    return {"cell",cdx}
--  return {r,v}
--  crash("Please implement create_input")
end function

procedure cancel(canceler c)
    integer idx = c[IDX],
            rdx = c[RDX]
    reactors[rdx][idx] = NULL
--  crash("Please implement cancel")
end procedure

function get_value(cell c)
--  crash("Please implement get_value")
    integer cdx = c[IDX],
            cv = cells[cdx][VALUE],
            calc = cells[cdx][CALCULATED]
    return iff(calc?cv(cdx):cv)
end function

local procedure update(reactor r)
    integer rdx = r[IDX]
    for cfap in reactors[rdx] do
        if cfap!=NULL then
            {cell c, integer fn, sequence args, integer prev} = cfap
            integer v = get_value(c)
            if v!=prev then
                if args={0} then
                    args = {v}
                end if
                call_proc(fn,args)
            end if
        end if
    end for
end procedure

procedure set_value(cell c, integer v)
--  crash("Please implement set_value")
    integer cdx = c[IDX]
    assert(cells[cdx][CALCULATED]==false,"set_value(CALCULATED)")
//  ^^^^^^ or display a warning, log attempt, or quietly do nowt.
    if v!=cells[cdx][VALUE] then
        cells[cdx][VALUE] = v
        update(cells[cdx][REACTOR])
    end if
end procedure

// Aside: Unlike Go, this allows you to put a callback on an input cell.
//        That could trivially be disabled as per set_value(CALCULATED).
function add_callback(cell c, integer fn, sequence args={})
    // aside: it is your choice whether input cells can have callbacks,
    //        tests neither rely on nor validate legality of doing so.
    if args={} then -- ie not explicitly assigned
        args = {0}
    end if
    reactor r = cells[c[IDX]][REACTOR]
    integer rdx = r[IDX]
    reactors[rdx] = append(reactors[rdx],{c,fn,args,get_value(c)}) -- CELL,FN,ARGS,PREV
    integer idx = length(reactors[rdx])
    return {"canceler",idx,rdx}
--  crash("Please implement add_callback")
end function

local function compute(integer cdx)
    sequence c = cells[cdx]
    integer fn = c[FN], v
    switch c[CALCULATED] do
        case C1:    v := fn(get_value(c[DEP1]))
        case C1i:   v := fn(get_value(c[DEP1]),c[DEP2])
        case C2:    v := fn(get_value(c[DEP1]),get_value(c[DEP2]))
        default:    crash("not a computed cell!")
    end switch
    return v
end function

function create_compute1(reactor r, cell dep, integer fn)
    cell c = create_input(r, compute, C1, fn, dep)
    return c
--  crash("Please implement the create_compute1 function")
end function

// aside: Go[testing] used a closure for fn with an implicit binding to i, but we need the explicit i.
//        As such, this is not formally part of the exercise description, but needed for tests to pass.
function create_compute1i(reactor r, cell dep, integer fn, i)
    cell c = create_input(r, compute, C1i, fn, dep, i)
    return c
--  crash("Please implement the create_compute1i function")
end function

function create_compute2(reactor r, cell dep1, dep2, integer fn)
    cell c = create_input(r, compute, C2, fn, dep1, dep2)
    return c
--  crash("Please implement the create_compute2 function")
end function

--set_test_verbosity(TEST_SHOW_ALL)
set_test_verbosity(TEST_SHOW_FAILED)

// Setting the value of an input cell changes the observable Value()
procedure test_set_input()
    reactor r := new_reactor()
    cell i := create_input(r, 1)
    test_equal(get_value(i), 1, "cell value matches initial value")
    set_value(i, 2)
    test_equal(get_value(i), 2, "call value maitches changed value")
end procedure

-- used in multiple tests:
function plus1(integer v) return v+1 end function
function minus1(integer v) return v-1 end function
function mul(integer v1, v2) return v1*v2 end function

// The value of a compute 1 cell is determined by the value of the dependencies.
procedure test_basic_compute1()
    reactor r := new_reactor()
    cell i := create_input(r, 1)
    cell c := create_compute1(r, i, plus1)
    test_equal(get_value(c), 2, "get_value(c) is properly computed based on initial input cell value")
    set_value(i, 2)
    test_equal(get_value(c), 3, "get_value(c) is properly computed based on changed input cell value")
end procedure

--DEV: (compilation error!) [I think that's now solved... or just went away when I rebooted...]
include hll_stubs.e

// The value of a compute 2 cell is determined by the value of the dependencies.
procedure test_basic_compute2()
--  nested function orbits(integer v1, v2) return or_bits(v1,v2) end nested function
    reactor r := new_reactor()
    cell i1 := create_input(r, 1),
         i2 := create_input(r, 2),
         c := create_compute2(r, i1, i2, or_bits)
--       c := create_compute2(r, i1, i2, orbits)
    test_equal(get_value(c), 3, "get_value(c) is properly computed based on initial input cell values")
    set_value(i1, 4)
    test_equal(get_value(c), 6, "get_value(c) is properly computed when first input cell value changes")
    set_value(i2, 8)
    test_equal(get_value(c), 12, "get_value(c) is properly computed when second input cell value changes")
end procedure

// Compute 2 cells can depend on compute 1 cells.
procedure test_compute2_diamond()
    reactor r := new_reactor()
    cell i := create_input(r, 1),
         c1 := create_compute1(r, i, plus1),
         c2 := create_compute1(r, i, minus1),
         c3 := create_compute2(r, c1, c2, mul)
    test_equal(get_value(c3), 0, "get_value(c3) is properly computed based on initial input cell value")
    set_value(i, 3)
    test_equal(get_value(c3), 8, "get_value(c3) is properly computed based on changed input cell value")
end procedure

// Compute 1 cells can depend on other compute 1 cells.
procedure test_compute1_chain()
    nested function t10pd(integer v, d) return v*10+d end nested function
    reactor r := new_reactor()
    cell inp := create_input(r, 1), c = inp
    for i=2 to 8 do
         c = create_compute1i(r, c, t10pd, i)
    end for
    test_equal(get_value(c), 12345678, "get_value(c) is properly computed based on initial input cell value")
    set_value(inp, 9)
    test_equal(get_value(c), 92345678, "get_value(c) is properly computed based on changed input cell value")
end procedure

// Compute 2 cells can depend on other compute 2 cells.
procedure test_compute2_tree()
    nested function add(integer v1, v2) return v1+v2 end nested function
    reactor r := new_reactor()
    sequence ins = {}, first_level = {}
    for v in {1,10,100} do
         ins = append(ins,create_input(r, v))
    end for
    for i=1 to 2 do
        first_level = append(first_level,create_compute2(r, ins[i], ins[i+1], add))
    end for
    cell output := create_compute2(r, first_level[1], first_level[2], add)
    test_equal(get_value(output), 121, "output is properly computed based on initial input cell values")
    for c in ins do
        set_value(c, get_value(c) * 2)
    end for
    test_equal(get_value(output), 242, "output is properly computed based on changed input cell values")
end procedure

-- (nb used in >1 tests:)
sequence observed = {}
procedure observe(integer v) observed &= v end procedure
integer observed_called = 0
procedure observe_count(integer v) observed_called += 1 end procedure

// Compute cells can have callbacks.
procedure test_basic_callback()
    reactor r := new_reactor()
    cell i := create_input(r, 1),
         c := create_compute1(r, i, plus1)
    observed = {}
    {} = add_callback(c,observe)
    test_true(length(observed)==0,"callback called before changes were made")
    set_value(i, 2)
    test_true(length(observed)==1,"callback called when changes were made")
    test_equal(observed,{3},"callback called with proper value")
end procedure

// Callbacks and only trigger on change.
procedure test_only_call_on_changes()
    nested function plus1or2(integer v) return iff(v>3?v+1:2) end nested function
    reactor r := new_reactor()
    cell i := create_input(r, 1),
         c := create_compute1(r, i, plus1or2)
    observed_called = 0
    {} = add_callback(c,observe_count)
    set_value(i, 1)
    test_equal(observed_called, 0, "observe_count called even though input didn't change")
    set_value(i, 2)
    test_equal(observed_called, 0, "observe_count called even though computed value didn't change")
end procedure

// Callbacks can be added and removed.
procedure test_callback_add_remove()
    reactor r := new_reactor()
    cell i := create_input(r, 1),
         c := create_compute1(r, i, plus1)
    observed = {}
    canceler cb1 := add_callback(c,observe)
    observed_called = 0
    {} = add_callback(c,observe_count)
    set_value(i, 2)
    test_equal(observed,{3},"observe not properly called")
    test_equal(observed_called,1,"observe_count not properly called")
    cancel(cb1)
    set_value(i, 3)
    test_true(length(observed)==1, "observed called after removal")
    test_equal(observed_called,2,"observe_count not properly called after first callback removal")
end procedure

sequence calls = {}
procedure inc_calls(integer i) calls[i] += 1 end procedure

procedure test_multiple_callback_removal()
    reactor r := new_reactor()
    cell i := create_input(r, 1),
         c := create_compute1(r, i, plus1)
    integer n = 5
    calls = repeat(0,n)
    sequence cancelers = repeat(0,n)
    for k=1 to n do
        cancelers[k] = add_callback(c,inc_calls,{k})
    end for
    set_value(i, 2)
    for k=1 to n do
        test_true(calls[k]==1,sprintf("callback %d/%d should be called 1 time, was called %d times", {k, n, calls[k]}))
        cancel(cancelers[k])
    end for
    set_value(i, 3)
    for k=1 to n do
        test_true(calls[k]==1,sprintf("callback %d/%d was called after it was removed", {k, n}))
    end for
end procedure

-- PL: Idempotency is a property of certain operations or API requests, which guarantees that performing 
--      the operation multiple times will yield the same result as if it was executed only once.

procedure test_remove_idempotence()
    reactor r := new_reactor()
    cell inp := create_input(r, 1),
         out := create_compute1(r, inp, plus1)

    observed_called = 0
    canceler cb1 := add_callback(out,observe)
    {} = add_callback(out,observe_count)
    for i=1 to 10 do
        cancel(cb1)
    end for
    set_value(inp, 2)
    test_true(observed_called==1,"remaining callback function was still called")
end procedure

// Callbacks should only be called once even though multiple dependencies have changed.
procedure test_only_call_once_on_multiple_dep_changes()
    reactor r := new_reactor()
    cell i := create_input(r, 1),
         c1 := create_compute1(r, i, plus1),
         c2 := create_compute1(r, i, minus1),
         c3 := create_compute1(r, c2, minus1),
         c4 := create_compute2(r, c1, c3, mul)
    observed_called = 0
    {} = add_callback(c4,observe_count)
    set_value(i, 3)
    test_true(observed_called>0,"callback function was called")
    test_true(observed_called==1,"callback function was called just once")
end procedure

// Callbacks should not be called if dependencies change in such a way
// that the final value of the compute cell does not change.
procedure test_no_call_on_dep_changes_resulting_in_no_change()
    nested function diff(integer v1, v2) return v1-v2 end nested function
    reactor r := new_reactor()
    cell input := create_input(r, 0),
         iplus1 := create_compute1(r, input, plus1),
         iless1 := create_compute1(r, input, minus1),
         output := create_compute2(r, iplus1, iless1, diff)
    // The output's value is always 2, no matter what the input is.
    observed_called = 0
    {} = add_callback(output,observe_count)
    set_value(input, 5)
    test_equal(observed_called,0,"callback function called even though computed value didn't change")
end procedure

// Callbacks on the same cell can be added and removed independently.
// Note this puts callbacks on an input cell, which (afaict) Go prohibits
procedure test_multiple_callbacks_on_a_single_cell()
    reactor r := new_reactor()
    cell i := create_input(r, 1)
    observed_called = 0
    canceler c1 := add_callback(i,observe_count),
             c2 := add_callback(i,observe_count),
             c3 := add_callback(i,observe_count)
    set_value(i, 2)
    test_equal(observed_called,3,"all three callbacks invoked")
    cancel(c1)
    set_value(i, 3)
    test_equal(observed_called,5,"first canceler works")
    cancel(c2)
    set_value(i, 4)
    test_equal(observed_called,6,"second canceler works")
    cancel(c3)
    set_value(i, 5)
    test_equal(observed_called,6,"third canceler works")
end procedure


test_set_input()
test_basic_compute1()
test_basic_compute2()
test_compute2_diamond()
test_compute1_chain()
test_compute2_tree()
test_basic_callback()
test_only_call_on_changes()
test_callback_add_remove()
test_multiple_callback_removal()
test_remove_idempotence()
test_only_call_once_on_multiple_dep_changes()
test_no_call_on_dep_changes_resulting_in_no_change()
test_multiple_callbacks_on_a_single_cell()
test_summary()

