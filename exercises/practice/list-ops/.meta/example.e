global function my_foldl(sequence s, integer fn, object initial)
    for i in s do
        initial = fn(initial,i)
    end for
    return initial
end function

global function my_foldr(sequence s, integer fn, object initial)
    for i=length(s) to 1 by -1 do
        initial = fn(s[i],initial)
    end for
    return initial
end function

global function my_map(sequence s, integer fn)
    return apply(s,fn)
--  sequence res = {}
--  for item in s do
--      res = append(res, fn(item))
--  end for
--  return res
end function

global function my_filter(sequence s, integer fn)
    return filter(s,fn)
--  sequence res = {}
--  for item in s do
--      if fn(item) then
--          res = append(res, item)
--      end if
--  end for
--  return res
end function

global function my_append(sequence s1, s2)
    return s1 & s2
end function

global function my_concatenate(sequence s)
    sequence res = {}
    for i in s do res &= i end for
    return res
end function

global function my_length(sequence s)
    return length(s)
--  nested function plus1(integer l, object /*item*/)
--      return l+1
--  end nested function
--  return my_foldl(s, plus1, 0)
end function

global function my_reverse(sequence s)
    return reverse(s)
--  sequence res = {}
--  for i = length(s) to 1 by -1 do
--  res = append(res, s[i])
--  end for
--  return res
end function


