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
{"",false,"empty sentence"},
{"abcdefghijklmnopqrstuvwxyz",true,"perfect lower case"},
{"the quick brown fox jumps over the lazy dog",true,"only lower case"},
{"a quick movement of the enemy will jeopardize five gunboats",false,`missing the letter 'x'`},
{"five boxing wizards jump quickly at it",false,`missing the letter 'h'`},
{"the_quick_brown_fox_jumps_over_the_lazy_dog",true,"with underscores"},
{"the 1 quick brown fox jumps over the 2 lazy dogs",true,"with numbers"},
{"7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog",false,"missing letters replaced by numbers"},
{`"Five quacking Zephyrs jolt my wax bed."`,true,"mixed case and punctuation"},
{"abcdefghijklm ABCDEFGHIJKLM",false,"a-m and A-M are 26 different characters but not a pangram"},
}
--</do not edit>

