constant COLORS = {"black","brown","red","orange","yellow","green","blue","violet","grey","white"}

global function resistor(sequence colors)
  integer res = 0
  for i=1 to min(length(colors),2) do
    res = res*10 + find(lower(colors[i]),COLORS)-1
  end for
  return res
end function

