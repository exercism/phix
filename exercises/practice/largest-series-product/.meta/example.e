global function largest_series_product(string digits, integer span)
    if span<0 or length(digits)<span then return 0 end if
    integer res = 0     
    for i=1 to length(digits)-span+1 do
        integer prod = 1
        for digit in digits from i to i+span-1 do
            if digit<'0' or digit>'9' then return 0 end if
            prod *= digit-'0'
        end for
        if prod>res { res = prod }
    end for
    return res
end function

