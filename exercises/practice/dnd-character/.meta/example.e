enum Strength, Dexterity, Constitution, Intelligence, Wisdom, Charisma, Hitpoints

global function modifier(integer score)
    return floor((score-10)/2)
end function

global function ability()
    integer mind = 7, res = 0
    for i=1 to 4 do
        integer d = rand(6)
        res += d
        if d<mind then mind = d end if
    end for
    return res - mind
end function

global function new_character()
    sequence character = repeat(0,Hitpoints)
    character[Strength] = ability()
    character[Dexterity] = ability()
    character[Constitution] = ability()
    character[Intelligence] = ability()
    character[Wisdom] = ability()
    character[Charisma] = ability()
    character[Hitpoints] = 10+modifier(character[Constitution])
    return character
end function

global function get_strength(sequence character)
    return character[Strength]
end function

global function get_dexterity(sequence character)
    return character[Dexterity]
end function

global function get_constitution(sequence character)
    return character[Constitution]
end function

global function get_intelligence(sequence character)
    return character[Intelligence]
end function

global function get_wisdom(sequence character)
    return character[Wisdom]
end function

global function get_charisma(sequence character)
    return character[Charisma]
end function

global function get_hitpoints(sequence character)
    return character[Hitpoints]
end function

