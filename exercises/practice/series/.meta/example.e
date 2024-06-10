global function all(string text, integer len)
    if len>length(text) or len<=0 then return "error" end if
    sequence res = {}
    for i=1 to length(text)-len+1 do
        res = append(res,text[i..i+len-1])
    end for
    return res
end function

