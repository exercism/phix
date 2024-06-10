global function isogram(string s)
    s = trim(sort(lower(s))," -")
    return s=unique(s)
end function 

