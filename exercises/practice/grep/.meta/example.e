global function search(string pattern, sequence flags, files)
    bool bi = find("-i",flags), // insensitive matches
         bl = find("-l",flags), // filenames only   
         bn = find("-n",flags), // line numbers
         bx = find("-x",flags), // match entire lines
         bv = find("-v",flags)!=0 // invert matches
    if bi then pattern = lower(pattern) end if
    integer lChk = iff(bx?equal:match)
    sequence res = {}
    for f in files do
        sequence lines = get_text(f,GT_LF_STRIPPED)
        for i,l in lines do
            if length(l)!=0 then
                if bi then l = lower(l) end if
                if lChk(pattern,l)!=0 != bv then
                    if bl then 
                        res = append(res,f)
                        exit
                    end if
                    string line = ""
                    if length(files)>1 { line = f & ":" }
                    if bn then line &= sprintf("%d:",i) end if
                    line &= lines[i] // (nb not lower()'d!)
                    res = append(res,line)
                end if
            end if
        end for
    end for
    return res
end function
