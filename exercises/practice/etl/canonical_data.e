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
{{{1,"A"}},{{'a',1}},"single letter"},
{{{1,"AEIOU"}},{{'a',1},{'e',1},{'i',1},{'o',1},{'u',1}},"single score with multiple letters"},
{{{1,"AE"},{2,"DG"}},{{'a',1},{'d',2},{'e',1},{'g',2}},"multiple scores with multiple letters"},
{{{1,"AEIOULNRST"},{2,"DG"},{3,"BCMP"},{4,"FHVWY"},{5,"K"},{8,"JX"},{10,"QZ"}},{{'a',1},{'b',3},{'c',3},{'d',2},{'e',1},{'f',4},{'g',2},{'h',4},{'i',1},{'j',8},{'k',5},{'l',1},{'m',3},{'n',1},{'o',1},{'p',3},{'q',10},{'r',1},{'s',1},{'t',1},{'u',1},{'v',4},{'w',4},{'x',8},{'y',4},{'z',10}},"multiple scores with differing numbers of letters"},
}
--</do not edit>

