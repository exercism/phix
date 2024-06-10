global function encode(string message, integer rails, bool encode = true)
    integer l = length(message), rail = 1, d = +1, edge = rails, idx = 1
    string res = repeat('?',l)
    sequence rl = repeat(0,l)
    for i=1 to l do
        rl[i] = rail
        if rail==edge then {d,edge} = {-d, rails+1-edge} end if
        rail += d
    end for
    for rail=1 to rails do
        for i,r in rl do
            if r==rail then
                if encode then
                    res[idx] = message[i]
                else
                    res[i] = message[idx]
                end if
                idx += 1
            end if
        end for
    end for
    return res
end function

global function decode(string message, integer rails)
    return encode(message,rails,false)
end function

