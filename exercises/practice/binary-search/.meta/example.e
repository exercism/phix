global function my_find(sequence list, atom key)
--  return binary_search(key,list)
  integer lo = 1, hi = length(list)
  while lo<=hi do
    integer mid = floor((lo+hi)/2)
    switch compare(key,list[mid]) do
        case -1: hi = mid-1
        case  0: return mid
        case +1: lo = mid+1
    end switch
  end while
  return -lo
end function

