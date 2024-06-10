global function colors()
  return {"black","brown","red","orange","yellow","green","blue","violet","grey","white"}
end function

global function color_code(string color)
  return find(color,colors())-1
end function

