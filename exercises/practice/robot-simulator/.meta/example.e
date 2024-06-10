constant dstr = {"north","east","south","west"},
         dxy  = {{0,1},  {1,0}, {0,-1}, {-1,0}},
         dright = {2,3,4,1}, dleft = {4,1,2,3}

global function move(sequence robot, string commands)
    integer {x,y} = robot, d = find(robot[3],dstr)
    for c in commands do
        switch c do
            case 'R': d = dright[d]
            case 'L': d = dleft[d]
            case 'A': x += dxy[d][1]
                      y += dxy[d][2]
        end switch
    end for
    return {x,y,dstr[d]}
end function

