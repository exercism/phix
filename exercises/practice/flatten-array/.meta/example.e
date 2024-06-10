global function flatten_array(sequence s)
    return filter(flatten(s),"!=",-1)
end function
