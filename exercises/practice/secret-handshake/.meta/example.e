constant actions = {"wink", "double blink", "close your eyes", "jump"}

global function commands(integer code)
    sequence res = {}
    for i, action in actions do
        if and_bits(code,power(2,i-1)) then
            res = append(res,action)
        end if
    end for
    if and_bits(code,0x10) then res = reverse(res) end if
    return res
end function

