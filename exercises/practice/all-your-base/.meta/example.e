include lib/errors.e

global function rebase(integer input_base, sequence input_digits, integer output_base)
    if input_base < 2 then return {ERROR,"input base must be >= 2"} end if
    if output_base < 2 then return {ERROR,"output base must be >= 2"} end if
    sequence res = {}
    while length(input_digits) > 0 do
        integer q = 0
        for i, digit in input_digits do
            if digit < 0 or digit >= input_base then
                return {ERROR,"all digits must satisfy 0 <= d < input base"}
            end if
            q = q*input_base + digit
            input_digits[i] = floor(q/output_base)
            q = remainder(q,output_base)
        end for
        res &= q
        input_digits = trim_head(input_digits,0)
    end while
    res = iff(length(res)?reverse(res):{0})
    return {OK,res}
end function

