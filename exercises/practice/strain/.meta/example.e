global function keep(sequence s, integer f, bool bKeep=true)
--  (hardly worth it, really...)
--  nested function fk(object item, sequence userdata)
--      integer {f, bKeep} = userdata
--      return f(item)=bKeep
--  end nested function
--  return filter(s,fk,{f,bKeep})
--  return filter(s,f) -- (keep only)
--/!*
    sequence res = {}
    for si in s do
        if f(si)=bKeep then
            res = append(res,si)
        end if
    end for
    return res
--*!/
end function

global function discard(sequence s, integer f)
    return keep(s,f,false)
    -- (or above with not f(si) as the test)
end function

