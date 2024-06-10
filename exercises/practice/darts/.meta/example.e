global function score(atom x, y)
    atom r = x*x+y*y
    return 5*(r<=1) + 4*(r<=25) + (r<=100)
end function

