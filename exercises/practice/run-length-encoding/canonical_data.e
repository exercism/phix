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
{"","","empty string"},
{"XYZ","XYZ","single characters only are encoded without count"},
{"AABBBCCCC","2A3B4C","string with no single characters"},
{"WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB","12WB12W3B24WB","single characters mixed with repeated characters"},
{"  hsqq qww  ","2 hs2q q2w2 ","multiple whitespace mixed in string"},
{"aabbbcccc","2a3b4c","lowercase characters"},
{"zzz ZZ  zZ","zzz ZZ  zZ","encode followed by decode gives original string"},
}
--</do not edit>

