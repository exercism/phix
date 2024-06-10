constant want = "For want of a %s the %s was lost.",
          all = "And all for the want of a %s."

global function proverb(sequence rhyme)
    // returns the proverb as a list of strings, one per line.
    integer l = length(rhyme)
    sequence res = repeat(0,l)
    for i=1 to l-1 do
        res[i] = sprintf(want,{rhyme[i],rhyme[i+1]})
    end for
    if l>0 then
        res[l] = sprintf(all,{rhyme[1]})
    end if
    return res
end function

