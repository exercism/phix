global function latest(sequence scores)
    return scores[$]
end function

global function personal_best(sequence scores)
    return max(scores)
end function

global function personal_top_three(sequence scores)
    return sort(deep_copy(scores),DESCENDING)[1..min(3,length(scores))]
end function

