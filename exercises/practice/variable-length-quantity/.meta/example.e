global function vlq_encode(sequence s)
    sequence res = {}
    for i=length(s) to 1 by -1 do
        atom n = s[i], msb = 0
        if n<0 then crash("unsigned integers only!") end if
        do
            res = prepend(res,msb+and_bits(n,#7F))
            n = floor(n/#80)
            msb = #80
        until n=0
    end for
    return res
end function
 
global function vlq_decode(sequence s)
    sequence res = {}
    atom n = 0, more
    for si in s do
        n = n*#80+and_bits(si,#7F)
        more = and_bits(si,#80)
        if not more then
            res = append(res,n)
            n = 0
        end if
    end for
    if more then crash("incomplete") end if
    return res
end function

