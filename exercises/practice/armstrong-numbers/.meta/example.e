global function is_armstrong_number(integer n)
    sequence digits = sprintf("%d",n)
    integer l = length(digits)
    for d in digits do
        n -= power(d-'0',l)
    end for
    return n==0
--alt:
--  sequence digits = sq_sub(sprintf("%d",n),'0')
--  return n=sum(sq_power(digits,length(digits)))
end function

