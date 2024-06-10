constant AZ26 = power(2,26)-1   // == #3FFFFFF, 26 set bits

global function is_pangram(sequence sentence)
    if string(sentence) then
        sentence = utf8_to_utf32(sentence)
    end if
--/*
    sentence = upper(sentence)
    for letter = 'A' to 'Z' do
        if not find(letter, sentence) then
            return false
        end if
    end for
    return true
--*/
--  sentence = filter(upper(sentence),"in",{'A','Z'},"[]")
--  return length(unique(sentence))==26
--/!*
--  integer mask = AZ26
    integer mask = 0
    for ch in sentence do
        if ch<='z' then
            ch -= (ch>'Z')*('a'-'A')
            if ch>='A' then
--              mask -= mask && (1 << (ch-'A'))
                mask ||= (1 << (ch-'A'))
            end if
        end if
    end for
--  return mask==0
    return mask==AZ26
--*!/
end function

