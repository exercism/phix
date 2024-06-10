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
{{},{},"equal","empty lists"},
{{},{1,2,3},"sublist","empty list within non empty list"},
{{1,2,3},{},"superlist","non empty list contains empty list"},
{{1,2,3},{1,2,3},"equal","list equals itself"},
{{1,2,3},{2,3,4},"unequal","different lists"},
{{1,2,5},{0,1,2,3,1,2,5,6},"sublist","false start"},
{{1,1,2},{0,1,1,1,2,1,2},"sublist","consecutive"},
{{0,1,2},{0,1,2,3,4,5},"sublist","sublist at start"},
{{2,3,4},{0,1,2,3,4,5},"sublist","sublist in middle"},
{{3,4,5},{0,1,2,3,4,5},"sublist","sublist at end"},
{{0,1,2,3,4,5},{0,1,2},"superlist","at start of superlist"},
{{0,1,2,3,4,5},{2,3},"superlist","in middle of superlist"},
{{0,1,2,3,4,5},{3,4,5},"superlist","at end of superlist"},
{{1,3},{1,2,3},"unequal","first list missing element from second list"},
{{1,2,3},{1,3},"unequal","second list missing element from first list"},
{{1,2},{1,22},"unequal","first list missing additional digits from second list"},
{{1,2,3},{3,2,1},"unequal","order matters to a list"},
{{1,0,1},{10,1},"unequal","same digits but different numbers"},
}
--</do not edit>

