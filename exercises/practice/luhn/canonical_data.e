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
{"1",false,"single digit strings can not be valid"},
{"0",false,"a single zero is invalid"},
{"059",true,"a simple valid SIN that remains valid if reversed"},
{"59",true,"a simple valid SIN that becomes invalid if reversed"},
{"055 444 285",true,"a valid Canadian SIN"},
{"055 444 286",false,"invalid Canadian SIN"},
{"8273 1232 7352 0569",false,"invalid credit card"},
{"1 2345 6789 1234 5678 9012",false,"invalid long number with an even remainder"},
{"1 2345 6789 1234 5678 9013",false,"invalid long number with a remainder divisible by 5"},
{"095 245 88",true,"valid number with an even number of digits"},
{"234 567 891 234",true,"valid number with an odd number of spaces"},
{"059a",false,"valid strings with a non-digit added at the end become invalid"},
{"055-444-285",false,"valid strings with punctuation included become invalid"},
{"055# 444$ 285",false,"valid strings with symbols included become invalid"},
{" 0",false,"single zero with space is invalid"},
{"0000 0",true,"more than a single zero is valid"},
{"091",true,"input digit 9 is correctly converted to output digit 9"},
{"9999999999 9999999999 9999999999 9999999999",true,"very long input is valid"},
{"109",true,"valid luhn with an odd number of digits and non zero first digit"},
{"055b 444 285",false,`using ascii value for non-doubled non-digit isn't allowed`},
{":9",false,`using ascii value for doubled non-digit isn't allowed`},
{"59%59",false,`non-numeric, non-space char in the middle with a sum that's divisible by 10 isn't allowed`},
}
--</do not edit>

