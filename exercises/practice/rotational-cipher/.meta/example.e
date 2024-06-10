global function rotational_cipher(string text, integer shift)
    string res = ""
    for ch in text do
        integer base = iff(ch>='A' and ch<='Z'?'A':
                       iff(ch>='a' and ch<='z'?'a':0))
        res &= iff(base?base+mod(ch-base+shift,26):ch)
    end for
    return res
end function

