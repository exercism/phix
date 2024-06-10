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
{"",true,"empty string"},
{"isogram",true,"isogram with only lower case characters"},
{"eleven",false,"word with one duplicated character"},
{"zzyzx",false,"word with one duplicated character from the end of the alphabet"},
{"subdermatoglyphic",true,"longest reported english isogram"},
{"Alphabet",false,"word with duplicated character in mixed case"},
{"alphAbet",false,"word with duplicated character in mixed case, lowercase first"},
{"thumbscrew-japingly",true,"hypothetical isogrammic word with hyphen"},
{"thumbscrew-jappingly",false,"hypothetical word with duplicated character following hyphen"},
{"six-year-old",true,"isogram with duplicated hyphen"},
{"Emily Jung Schwartzkopf",true,"made-up name that is an isogram"},
{"accentor",false,"duplicated character in the middle"},
{"angola",false,"same first and last characters"},
{"up-to-date",false,"word with duplicated character and with two hyphens"},
}
--</do not edit>

