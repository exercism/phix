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
{{1},800,"Only a single book"},
{{2,2},1600,"Two of the same book"},
{{},0,"Empty basket"},
{{1,2},1520,"Two different books"},
{{1,2,3},2160,"Three different books"},
{{1,2,3,4},2560,"Four different books"},
{{1,2,3,4,5},3000,"Five different books"},
{{1,1,2,2,3,3,4,5},5120,"Two groups of four is cheaper than group of five plus group of three"},
{{1,1,2,3,4,4,5,5},5120,"Two groups of four is cheaper than groups of five and three"},
{{1,1,2,2,3,4},4080,"Group of four plus group of two is cheaper than two groups of three"},
{{1,1,2,2,3,3,4,4,5},5560,"Two each of first four books and one copy each of rest"},
{{1,1,2,2,3,3,4,4,5,5},6000,"Two copies of each book"},
{{1,1,2,2,3,3,4,4,5,5,1},6800,"Three copies of first book and two each of remaining"},
{{1,1,2,2,3,3,4,4,5,5,1,2},7520,"Three each of first two books and two each of remaining books"},
{{1,1,2,2,3,3,4,5,1,1,2,2,3,3,4,5},10240,"Four groups of four are cheaper than two groups each of five and three"},
{{1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,4,4,5,5},14560,"Check that groups of four are created properly even when there are more groups of three than groups of five"},
{{1,1,2,3,4},3360,"One group of one and four is cheaper than one group of two and three"},
{{1,2,2,3,3,3,4,4,4,4,5,5,5,5,5},10000,"One group of one and two plus three groups of four is cheaper than one group of each size"},
}
--</do not edit>

