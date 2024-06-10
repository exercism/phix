include builtins/map.e

global function word_count(string phrase)
    integer fc = new_dict()
    for w in split_any(lower(phrase)," ,\n") do
        w = trim(w,"^%$@:!&'.")
        setd(w,getdd(w,0,fc)+1,fc)
    end for
    sequence res = pairs(fc)
    destroy_dict(fc)
    return res
end function

