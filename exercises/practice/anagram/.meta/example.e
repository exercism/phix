global function find_anagrams(string subject, sequence candidates)
    subject = lower(subject)
    string sorted_subject = sort(subject)
    sequence matching = {}
    for i,candidate in lower(candidates) do
        if length(candidate)==length(subject)
        and not equal(subject, candidate)
        and equal(sorted_subject, sort(candidate)) then
            matching = append(matching, candidates[i])
        end if
    end for
--  matching = sort(matching)
    return matching
end function
