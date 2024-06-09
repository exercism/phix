global function acronym(string phrase)
    sequence words = split_any(phrase," -_")
    return upper(vslice(words,1))
end function 

