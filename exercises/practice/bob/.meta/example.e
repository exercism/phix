global function hey(string s) 
    s = trim(s)
    if length(s)=0 then       return "Fine. Be that way!" end if 
    bool all_caps = equal(s,upper(s))
            and not equal(s,lower(s))
    return iff(s[$]='?'?iff(all_caps?"Calm down, I know what I'm doing!"
                                    :"Sure.")
                       :iff(all_caps?"Whoa, chill out!"
                                    :"Whatever."))
end function 

