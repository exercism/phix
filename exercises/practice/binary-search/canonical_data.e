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
{{6},6,0,"finds a value in an array with one element"},
{{1,3,4,6,8,9,11},6,3,"finds a value in the middle of an array"},
{{1,3,4,6,8,9,11},1,0,"finds a value at the beginning of an array"},
{{1,3,4,6,8,9,11},11,6,"finds a value at the end of an array"},
{{1,3,5,8,13,21,34,55,89,144,233,377,634},144,9,"finds a value in an array of odd length"},
{{1,3,5,8,13,21,34,55,89,144,233,377},21,5,"finds a value in an array of even length"},
{{1,3,4,6,8,9,11},7,-1,"identifies that a value is not included in the array"},
{{1,3,4,6,8,9,11},0,-1,`a value smaller than the array's smallest value is not found`},
{{1,3,4,6,8,9,11},13,-1,`a value larger than the array's largest value is not found`},
{{},1,-1,"nothing is found in an empty array"},
{{1,2},0,-1,"nothing is found when the left and right bounds cross"},
}
--</do not edit>

