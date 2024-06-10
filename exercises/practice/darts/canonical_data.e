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
{{-9,9},0,"Missed target"},
{{0,10},1,"On the outer circle"},
{{-5,0},5,"On the middle circle"},
{{0,-1},10,"On the inner circle"},
{{0,0},10,"Exactly on center"},
{{-0.1,-0.1},10,"Near the center"},
{{0.7,0.7},10,"Just within the inner circle"},
{{0.8,-0.8},5,"Just outside the inner circle"},
{{-3.5,3.5},5,"Just within the middle circle"},
{{-3.6,-3.6},1,"Just outside the middle circle"},
{{-7,7},1,"Just within the outer circle"},
{{7.1,-7.1},0,"Just outside the outer circle"},
{{0.5,-4},5,"Asymmetric position between the inner and middle circles"},
}
--</do not edit>

