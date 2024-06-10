local function normalise(integer m)
    m = mod(m,24*60)
    if m<0 then m += 24*60 end if
    return m -- (0..24*60-1)
end function
    
global function create_clock(integer hours, minutes)
    return normalise(hours*60+minutes)
end function

global function clock_str(object clock)
    -- return a string such as "12:45"
    integer mins = remainder(clock,60),
            hours = remainder((clock-mins)/60,24)
    return sprintf("%02d:%02d",{hours,mins})
end function

global function add_mins(object clock, integer minutes)
    return normalise(clock+minutes)
end function

global function sub_mins(object clock, integer minutes)
    return add_mins(clock,-minutes)
end function

global function equal_clocks(object clock1, clock2)
--  return equal(clock1,clock2)
    return clock1 == clock2
end function

