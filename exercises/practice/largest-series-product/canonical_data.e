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
{"29",2,18,"finds the largest product if span equals length"},
{"0123456789",2,72,"can find the largest product of 2 with numbers in order"},
{"576802143",2,48,"can find the largest product of 2"},
{"0123456789",3,504,"can find the largest product of 3 with numbers in order"},
{"1027839564",3,270,"can find the largest product of 3"},
{"0123456789",5,15120,"can find the largest product of 5 with numbers in order"},
{"73167176531330624919225119674426574742355349194934",6,23520,"can get the largest product of a big number"},
{"0000",2,0,"reports zero if the only digits are zero"},
{"99099",3,0,"reports zero if all spans include zero"},
{"123",4,0,"rejects span longer than string length"},
{"",0,1,"reports 1 for empty string and empty product (0 span)"},
{"123",0,1,"reports 1 for nonempty string and empty product (0 span)"},
{"",1,0,"rejects empty string and nonzero span"},
{"1234a5",2,0,"rejects invalid character in digits"},
{"12345",-1,0,"rejects negative span"},
}
--</do not edit>

