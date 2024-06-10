
local constant NAT = 0, ISO = 1, SCA = 2, EQU = 3

local function is_triangle(sequence sides)
    atom a = sides[1], b = sides[2], c = sides[3]
    if a+b>c and a+c>b and b+c>a then
        if a=b and b=c then return EQU end if
        if a=b or b=c or a=c then return ISO end if
        return SCA
    end if
    return NAT
end function

global function is_equilateral(sequence sides)
    return is_triangle(sides)=EQU
end function

global function is_isosceles(sequence sides)
    return and_bits(is_triangle(sides),ISO) -- (ie ISO or EQU)
end function

global function is_scalene(sequence sides)
    return is_triangle(sides)=SCA
end function

