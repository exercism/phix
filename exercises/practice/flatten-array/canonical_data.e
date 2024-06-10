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
{{},{},"empty"},
{{0,1,2},{0,1,2},"no nesting"},
{{{{}}},{},"flattens a nested array"},
{{1,{2,3,4,5,6,7},8},{1,2,3,4,5,6,7,8},"flattens array with just integers present"},
{{0,2,{{2,3},8,100,4,{{{50}}}},-2},{0,2,2,3,8,100,4,50,-2},"5 level nesting"},
{{1,{2,{{3}},{4,{{5}}},6,7},8},{1,2,3,4,5,6,7,8},"6 level nesting"},
{{1,2,-1},{1,2},"null values are omitted from the final result"},
{{-1,-1,3},{3},"consecutive null values at the front of the list are omitted from the final result"},
{{1,-1,-1,4},{1,4},"consecutive null values in the middle of the list are omitted from the final result"},
{{0,2,{{2,3},8,{{100}},-1,{{-1}}},-2},{0,2,2,3,8,100,-2},"6 level nest list with null values"},
{{-1,{{{-1}}},-1,-1,{{-1,-1},-1},-1},{},"all values in nested list are null"},
}
--</do not edit>

