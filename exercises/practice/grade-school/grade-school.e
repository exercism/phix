global function add_students(sequence register, bool bReturnSchool=false)
    -- each element of register is {string pupil, integer grade}
    -- if bReturnSchool is true return the whole thing, otherwise
    -- for each register entry processed return false if the pupil
    -- has already been registered, or true if successfully added.
    crash("please implement add_students")
end function

global function roster(sequence register)
    -- return the successfully added pupils in grade/name order
    -- the use of add_students is recommended, but not enforced.
    crash("please implement roster")
end function

global function grade(sequence register, integer g)
    -- return the same as roster but only for a specified grade
    -- the use of add_students is recommended, but not enforced.
    crash("please implement grade")
end function

