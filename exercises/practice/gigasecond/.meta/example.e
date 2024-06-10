include timedate.e

global function add_gigasecond(timedate moment)
    return adjust_timedate(moment, 1e9)
end function

