global function square_of_sum(integer n)
  n *= (n+1)/2
  return n*n
end function

global function sum_of_squares(integer n)
  return (2*n+1)*(n+1)*n/6
end function

global function difference_of_squares(integer n)
  return square_of_sum(n) - sum_of_squares(n)
end function

