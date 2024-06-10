global function reverse_string(string s)
--/*
    string res = ""
    for i=length(s) to 1 by -1 do
        res &= s[i]
    end for
    return res
--*/
--/*
    integer l = length(s)
    string res = repeat(' ',l)
    for i=1 to ceil(l/2) do
        res[i] = s[-i]
        res[-i] = s[i]
--      {res[i],res[-i]} = {s[-i],s[i]}
    end for
    return res
--*/
--/*
    for i=1 to ceil(length(s)/2) do
        {s[i],s[-i]} = {s[-i],s[i]}
    end for
    return s
--*/
    return reverse(s)
end function
