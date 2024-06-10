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
{{3,5},1,0,"no multiples within limit"},
{{3,5},4,3,"one factor has multiples within limit"},
{{3},7,9,"more than one multiple within limit"},
{{3,5},10,23,"more than one factor with multiples within limit"},
{{3,5},100,2318,"each multiple is only counted once"},
{{3,5},1000,233168,"a much larger limit"},
{{7,13,17},20,51,"three factors"},
{{4,6},15,30,"factors not relatively prime"},
{{5,6,8},150,4419,"some pairs of factors relatively prime and some not"},
{{5,25},51,275,"one factor is a multiple of another"},
{{43,47},10000,2203160,"much larger factors"},
{{1},100,4950,"all numbers are multiples of 1"},
{{},10000,0,"no factors means an empty sum"},
{{0},1,0,"the only multiple of 0 is 0"},
{{3,0},4,3,"the factor 0 does not affect the sum of multiples of other factors"},
{{2,3,5,7,11},10000,39614537,"solutions using include-exclude must extend to cardinality greater than 3"},
}
--</do not edit>

