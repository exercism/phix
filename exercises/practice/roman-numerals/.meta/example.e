global function roman(integer n)
    return sprintf("%R",n)
end function

--/*
constant ROMAN  = {"M", "CM", "D","CD", "C","XC","L","XL","X","IX","V","IV","I"}, 
         DECML  = {1000, 900, 500, 400, 100, 90, 50,  40,  10,  9,  5,   4,  1 } 
         
global function roman(integer val) 
    sequence res = "" 
    for i=1 to length(ROMAN) do 
        while val>=DECML[i] do 
            res &= ROMAN[i] 
            val -= DECML[i] 
        end while 
    end for 
    return res 
end function 
--*/

--/*
constant MDCLXVI = "MDCLXVI", CXI = "CXI"

global function roman(integer n) 
    sequence res = ""
    integer idx = 1, -- (..7, to "MDCLXVI")
             rn = 1000, -- 500,100,50,10,5,1
          tenth =  100  -- 100, 10,10, 1,1,0
    while n>0 do
        while n>=rn do
            res &= MDCLXVI[idx]
            n -= rn
        end while
        if n+tenth>=rn then
            res &= CXI[floor((idx+1)/2)]
            n += tenth -- above loop once more
        elsif n then
            idx += 1
            if and_bits(idx,1) then
                rn /= 5
                tenth = floor(rn/10)
            else
                rn /= 2
            end if
        end if
    end while
    return res
end function
--*/
