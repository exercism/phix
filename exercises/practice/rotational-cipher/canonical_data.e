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
{"a",0,"a","rotate a by 0, same output as input"},
{"a",1,"b","rotate a by 1"},
{"a",26,"a","rotate a by 26, same output as input"},
{"m",13,"z","rotate m by 13"},
{"n",13,"a","rotate n by 13 with wrap around alphabet"},
{"OMG",5,"TRL","rotate capital letters"},
{"O M G",5,"T R L","rotate spaces"},
{"Testing 1 2 3 testing",4,"Xiwxmrk 1 2 3 xiwxmrk","rotate numbers"},
{`Let's eat, Grandma!`,21,`Gzo'n zvo, Bmviyhv!`,"rotate punctuation"},
{"The quick brown fox jumps over the lazy dog.",13,"Gur dhvpx oebja sbk whzcf bire gur ynml qbt.","rotate all letters"},
}
--</do not edit>

