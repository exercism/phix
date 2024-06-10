local function caesar(string s, integer key, bool bPreserve=false)
    string res = ""
    if not bPreserve then s = lower(s) end if
    for ch in s do
        integer base = iff(ch>='a' and ch<='z'?'a':
                       iff(ch>='A' and ch<='Z'?'A':0))
        if base then
            res &= base+remainder(ch-base+key,26)
        elsif bPreserve then
            res &= ch
        end if
    end for
    return res
end function

global function caesar_encode(string s, integer key, bool bPreserve=false)
    return caesar(s, key, bPreserve)
end function

global function caesar_decode(string s, integer key, bool bPreserve=false)
    return caesar(s, 26-key, bPreserve)
end function

local constant ENCRYPT = +1, 
               DECRYPT = -1

local function vigenere(string s, key, integer mode, bool bPreserve)
    if not bPreserve then s = lower(s) end if
    integer k = 1
    string res = ""
    for ch in s do
        integer base = iff(ch>='a' and ch<='z'?'a':
                       iff(ch>='A' and ch<='Z'?'A':0))
        if base then
            res &= base+mod(ch-base+mode*(key[k]-'a'),26)
            k = mod(k,length(key))+1
        elsif bPreserve then
            res &= ch
        end if
    end for
    return res
end function

global function vigenere_encode(string msg, key, bool bPreserve=false)
    return vigenere(msg,key,ENCRYPT,bPreserve)
end function 

global function vigenere_decode(string msg, key, bool bPreserve=false)
    return vigenere(msg,key,DECRYPT,bPreserve)
end function 

global function random_key(integer minlen=100, maxlen=256)
    integer l = minlen+rand(maxlen-minlen+1)-1
    string res = repeat(' ',l)
    for i=1 to l do
        res[i] = 'a'+rand(26)-1
    end for
    return res
end function

