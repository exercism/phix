global function add_students(sequence register, bool bReturnSchool=false)
    -- each element of register is {string pupil, integer grade}
    -- if bReturnSchool is true return the whole thing, otherwise
    -- for each register entry processed return false if the pupil
    -- has already been registered, or true if successfully added.
    sequence school = {}, names = {}, ok = {}
    for e in register do
        {string name, integer grade} = e
        bool bOK = not find(name,names)
        if bOK then 
            school = append(school,{grade,name})
            names = append(names,name)
        end if
        ok &= bOK
    end for
    return iff(bReturnSchool?school:ok)
end function

global function roster(sequence register)
    -- return the successfully added pupils in grade/name order
    -- the use of add_students is recommended, but not enforced.
    sequence school = add_students(register,true)
    school = sort(school)
    return vslice(school,2) -- names
end function

global function grade(sequence register, integer g)
    -- return the same as roster but only for a specified grade
    -- the use of add_students is recommended, but not enforced.
    nested function desired_grade(sequence gn, integer g)
        return gn[1]=g
    end nested function
    sequence school = add_students(register,true)
    school = sort(filter(school,desired_grade,g))
    return vslice(school,2) -- names
end function

