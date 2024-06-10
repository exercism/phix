global function phone(string s)
    string res = ""
    for d in s do
        if d>'9' then return "error" end if
        if d>='0' then res &= d end if
    end for
    if length(res)=11 and res[1]='1' then
        res = res[2..$]
    end if
    if length(res)!=10 
    or res[1]<='1'
    or res[4]<='1' then
        res = "error"
    end if
    return res
end function

