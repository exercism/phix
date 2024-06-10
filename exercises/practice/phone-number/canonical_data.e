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
{"(223) 456-7890","2234567890","cleans the number"},
{"223.456.7890","2234567890","cleans numbers with dots"},
{"223 456   7890   ","2234567890","cleans numbers with multiple spaces"},
{"123456789","must not be fewer than 10 digits","invalid when 9 digits"},
{"22234567890","11 digits must start with 1","invalid when 11 digits does not start with a 1"},
{"12234567890","2234567890","valid when 11 digits and starting with 1"},
{"+1 (223) 456-7890","2234567890","valid when 11 digits and starting with 1 even with punctuation"},
{"321234567890","must not be greater than 11 digits","invalid when more than 11 digits"},
{"523-abc-7890","letters not permitted","invalid with letters"},
{"523-@:!-7890","punctuations not permitted","invalid with punctuations"},
{"(023) 456-7890","area code cannot start with zero","invalid if area code starts with 0"},
{"(123) 456-7890","area code cannot start with one","invalid if area code starts with 1"},
{"(223) 056-7890","exchange code cannot start with zero","invalid if exchange code starts with 0"},
{"(223) 156-7890","exchange code cannot start with one","invalid if exchange code starts with 1"},
{"1 (023) 456-7890","area code cannot start with zero","invalid if area code starts with 0 on valid 11-digit number"},
{"1 (123) 456-7890","area code cannot start with one","invalid if area code starts with 1 on valid 11-digit number"},
{"1 (223) 056-7890","exchange code cannot start with zero","invalid if exchange code starts with 0 on valid 11-digit number"},
{"1 (223) 156-7890","exchange code cannot start with one","invalid if exchange code starts with 1 on valid 11-digit number"},
}
--</do not edit>

