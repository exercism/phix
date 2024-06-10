constant MAX_ROBOTS = 26*26*1000 -- 676000

sequence robot_names = repeat(0,MAX_ROBOTS)
-- this turns out to be marginally slower:
--sequence robot_names = shuffle(tagset(MAX_ROBOTS))
integer free_names = MAX_ROBOTS

global type robot(object r)
    return integer(r) and r>=1 and r<=MAX_ROBOTS
end type

global function new_robot()
    integer r = free_names
    if free_names>0 then
--/!* (not needed/wanted if we shuffle(tagset) first)
        -- perform a single shuffle-step
        integer k = rand(free_names),
                rk = robot_names[k],
                rr = robot_names[r]
        robot_names[k] = iff(rr?rr:r)
        robot_names[r] = iff(rk?rk:k)
--*!/
        free_names -= 1
    end if
    return r -- (0 == failure)
end function

global function get_name(robot r)
    integer rn = robot_names[r]
    if rn == 0 then 
        return "all 676,000 names already allocated"
    end if
    integer n = rn-1,
            l1 = 'A'+floor(n/26000),
            l2 = 'A'+rmdr(floor(n/1000),26)
    return sprintf("%c%c%03d",{l1,l2,rmdr(n,1000)})
end function

global procedure reset(robot r)
    -- just create/discard a new robot and swap names
    -- nb k should not be type robot, in case it fails
    integer k = new_robot()
    if k then
        {robot_names[r],robot_names[k]} = {robot_names[k],robot_names[r]}
    end if
end procedure

