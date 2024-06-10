constant line = "On the %s day of Christmas my true love gave to me: %s",
         prez = {"twelve Drummers Drumming,", "eleven Pipers Piping,",
                 "ten Lords-a-Leaping,", "nine Ladies Dancing,",
                 "eight Maids-a-Milking,", "seven Swans-a-Swimming,",
                 "six Geese-a-Laying,", "five Gold Rings,",
                 "four Calling Birds,", "three French Hens,",
                 "two Turtle Doves, and", "a Partridge in a Pear Tree."}

global function verses(integer first, last)
    sequence res = {}
    for verse=first to last do
        res &= {sprintf(line,{ordinal(verse),join(prez[13-verse..$])})}
    end for
    return res
end function

