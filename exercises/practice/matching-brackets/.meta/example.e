global function balanced(string s)
    sequence bstack = {}
    for ch in s do
        switch ch do
            case '[','(','{':   bstack &= ch+1+(ch!='(')
            case ']',')','}':   if length(bstack)=0
                                or bstack[$]!=ch then
                                    return false
                                end if
                                bstack = bstack[1..$-1]
        end switch
    end for
    return length(bstack)=0
end function

