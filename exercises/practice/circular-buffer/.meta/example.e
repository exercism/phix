global struct buffer
    sequence buf
    integer wptr, rptr, used
end struct

global function new_buffer(integer size)
    buffer res = new()
    res.buf = repeat(0,size)
    return res
end function

// Aside: we are incrementing (both read and write) pointers before
//        using them, which makes the first thing end up in buf[1].

global function read_byte(buffer b)
    if b.used == 0 then return "empty" end if
    b.used -= 1
    b.rptr = rmdr(b.rptr,length(b.buf))+1
    return b.buf[b.rptr]
end function

global function write_byte(buffer b, integer c)
    if b.used == length(b.buf) then return "full" end if
    b.used += 1
    b.wptr = rmdr(b.wptr,length(b.buf))+1
    b.buf[b.wptr] = c
    return null
end function

global procedure overwrite(buffer b, integer c)
    if b.used == length(b.buf) then
        b.rptr = rmdr(b.rptr,length(b.buf))+1
        b.used -= 1
    end if
    if write_byte(b,c)!=null then crash("uh?") end if
end procedure

global procedure reset(buffer b, integer size)
    b.buf = repeat(0,size)
    b.used = 0
    b.rptr = 0
    b.wptr = 0
end procedure

