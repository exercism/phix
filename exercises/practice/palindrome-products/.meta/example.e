function palindromic(integer p)
    integer r = 0, t = p
    while t do
        {r, t} = {r*10 + rmdr(t,10), floor(t/10)}
    end while
    return r == p
end function

global function palindromic_products(integer fmin, fmax)
    sequence res = {{},{}}
    for f=fmin to fmax do if rmdr(f,10)!=0 then
        for g=f to fmax do if rmdr(g,10)!=0 then
            integer fg = f*g, c
            if palindromic(fg) then
                for i,t in {-1,+1} do
                    c = iff(res[i]=={} ? t : compare(fg,res[i][1]))
                    if c==t then
                        res[i] = {fg,{{f,g}}}
                    elsif c==0 then
                        res[i][2] = append(res[i][2],{f,g})
                    end if
                end for
            end if
        end if end for
    end if end for
    return res
end function

