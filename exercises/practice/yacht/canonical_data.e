-- created automatically by the test generator and brutally overwritten on a regular basis.
-- To permanently mark a test as ignoring all of this copy the following into test.exw:
--<do not edit>
--ignore canonical_data.e
--</do not edit>
-- Otherwise copy/paste this lot (rather than include, so it can verify up-to-date-ness):
--  **NB** If this begins {-1,{`exercise`,`<slug_name>`, then it's still raw json, and the
--          test generator needs updating to munge it, or you can just ignore it as above.
--<do not edit>
constant canonical_data = {
{{5,5,5,5,5},"yacht",50,"Yacht"},
{{1,3,3,2,5},"yacht",0,"Not Yacht"},
{{1,1,1,3,5},"ones",3,"Ones"},
{{3,1,1,5,1},"ones",3,"Ones, out of order"},
{{4,3,6,5,5},"ones",0,"No ones"},
{{2,3,4,5,6},"twos",2,"Twos"},
{{1,4,1,4,1},"fours",8,"Fours"},
{{3,3,3,3,3},"threes",15,"Yacht counted as threes"},
{{3,3,3,3,3},"fives",0,"Yacht of 3s counted as fives"},
{{1,5,3,5,3},"fives",10,"Fives"},
{{2,3,4,5,6},"sixes",6,"Sixes"},
{{2,2,4,4,4},"full house",16,"Full house two small, three big"},
{{5,3,3,5,3},"full house",19,"Full house three small, two big"},
{{2,2,4,4,5},"full house",0,"Two pair is not a full house"},
{{1,4,4,4,4},"full house",0,"Four of a kind is not a full house"},
{{2,2,2,2,2},"full house",0,"Yacht is not a full house"},
{{6,6,4,6,6},"four of a kind",24,"Four of a Kind"},
{{3,3,3,3,3},"four of a kind",12,"Yacht can be scored as Four of a Kind"},
{{3,3,3,5,5},"four of a kind",0,"Full house is not Four of a Kind"},
{{3,5,4,1,2},"little straight",30,"Little Straight"},
{{1,2,3,4,5},"big straight",0,"Little Straight as Big Straight"},
{{1,1,2,3,4},"little straight",0,"Four in order but not a little straight"},
{{1,2,3,4,6},"little straight",0,"No pairs but not a little straight"},
{{1,1,3,4,5},"little straight",0,"Minimum is 1, maximum is 5, but not a little straight"},
{{4,6,2,5,3},"big straight",30,"Big Straight"},
{{6,5,4,3,2},"little straight",0,"Big Straight as little straight"},
{{6,5,4,3,1},"big straight",0,"No pairs but not a big straight"},
{{3,3,5,6,6},"choice",23,"Choice"},
{{2,2,2,2,2},"choice",10,"Yacht as choice"},
}
--</do not edit>

