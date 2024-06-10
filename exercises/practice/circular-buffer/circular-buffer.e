
// define the buffer struct here
global struct buffer
end struct

global function new_buffer(integer size)
    crash("please implement new_buffer")
end function

global function read_byte(buffer b)
    crash("please implement read_byte")
end function

global function write_byte(buffer b, integer c)
    crash("please implement write_byte")
end function

global procedure overwrite(buffer b, integer c)
    crash("please implement overwrite")
end procedure

global procedure reset(buffer b, integer size)
    crash("please implement reset")
end procedure

