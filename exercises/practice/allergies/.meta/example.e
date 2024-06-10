constant allergens = {"eggs","peanuts","shellfish","strawberries",
                      "tomatoes","chocolate","pollen","cats"}

global function list(integer allergies)
    -- returns a sequence of strings
    sequence res = {}
    integer mask = 1
    for i,a in allergens do
        if and_bits(allergies,mask) then
            res = append(res,allergens[i])
        end if
        mask *= 2
    end for
    return res
end function

global function allergic_to(string allergen, integer allergies)
    -- returns a true/false value
    return allergies && 1<<(find(allergen,allergens)-1)!=0
end function

