local function mul_inv(integer a, n)
    -- pinched from rosettacode, tee hee.
    if n<0 then n = -n end if
    if a<0 then a = n - mod(-a,n) end if
    integer t = 0,  nt = 1,
            r = n,  nr = a;   
    while nr!=0 do
        integer q = floor(r/nr)
        {t, nt} = {nt, t-q*nt}
        {r, nr} = {nr, r-q*nr}
    end while
    if r>1 then return "a is not invertible" end if
    if t<0 then t += n end if
    return t
end function

global function affine_encode(string msg, integer a, b)
--  crash("please implement affine_encode")
    if hcf(a,26)!=1 then return "a and m must be coprime." end if
    string res = ""
    integer spacetime = 0
    for ch in lower(msg) do
        if ch>='a' and ch<='z' then
            ch = mod(a*(ch-'a')+b,26)+'a'
        elsif ch<'0' or ch>'9' then
            ch = ' '
        end if
        if ch!=' ' then
            spacetime += 1
            if spacetime>5 then
                res &= ' '
                spacetime = 1
            end if
            res &= ch
        end if
    end for
    return res
end function

global function affine_decode(string msg, integer a, b)
--  crash("please implement affine_decode")
    if hcf(a,26)!=1 then return "a and m must be coprime." end if
    a = mul_inv(a, 26)
    string res = ""
    for ch in msg do
        if ch>='a' and ch<='z' then
            res &= mod(a*(ch-'a'-b),26)+'a'
        elsif ch!=' ' then
            res &= ch
        end if
    end for
    return res
end function

