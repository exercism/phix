constant vowels = "aeiou",
         vowely = vowels&'y'

global function sentence(string s)
    string res = "", space = ""
    for w in split(s) do
        if not find(w[1],vowels) and
          (not find(w[1],"xy")
            or find(w[2],vowels)) then
            integer k = 1
            while not find(w[k+1],vowely) do k += 1 end while
            if w[k]='q' and w[k+1]='u' then k += 1 end if
            w = w[k+1..$] & w[1..k]
        end if
        res &= space & w & "ay"
        space = " "
    end for
    return res
end function

