global function atbash(string s)
    string res = ""
    integer clusterSize = 0
    for ch in lower(s) do
        bool bLetter = ch>='a' and ch<='z'
        if bLetter or (ch>='0' and ch <= '9') then
            if bLetter then
                ch = 'a'+'z'-ch
            end if
            if clusterSize==5 then
                res &= ' '
                clusterSize = 0
            end if
            res &= ch
            clusterSize += 1
        end if
    end for
    return res
end function

