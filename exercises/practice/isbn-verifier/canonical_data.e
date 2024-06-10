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
{"3-598-21508-8",true,"valid isbn"},
{"3-598-21508-9",false,"invalid isbn check digit"},
{"3-598-21507-X",true,"valid isbn with a check digit of 10"},
{"3-598-21507-A",false,"check digit is a character other than X"},
{"4-598-21507-B",false,"invalid check digit in isbn is not treated as zero"},
{"3-598-P1581-X",false,"invalid character in isbn is not treated as zero"},
{"3-598-2X507-9",false,"X is only valid as a check digit"},
{"3598215088",true,"valid isbn without separating dashes"},
{"359821507X",true,"isbn without separating dashes and X as check digit"},
{"359821507",false,"isbn without check digit and dashes"},
{"3598215078X",false,"too long isbn and no dashes"},
{"00",false,"too short isbn"},
{"3-598-21507",false,"isbn without check digit"},
{"3-598-21515-X",false,"check digit of X should not be used for 0"},
{"",false,"empty isbn"},
{"134456729",false,"input is 9 characters"},
{"3132P34035",false,"invalid characters are not ignored after checking length"},
{"3598P215088",false,"invalid characters are not ignored before checking length"},
{"98245726788",false,"input is too long but contains a valid isbn"},
}
--</do not edit>

