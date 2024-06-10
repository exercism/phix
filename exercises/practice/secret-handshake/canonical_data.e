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
{1,{"wink"},"wink for 1"},
{2,{"double blink"},"double blink for 10"},
{4,{"close your eyes"},"close your eyes for 100"},
{8,{"jump"},"jump for 1000"},
{3,{"wink","double blink"},"combine two actions"},
{19,{"double blink","wink"},"reverse two actions"},
{24,{"jump"},"reversing one action gives the same action"},
{16,{},"reversing no actions still gives no actions"},
{15,{"wink","double blink","close your eyes","jump"},"all possible actions"},
{31,{"jump","close your eyes","double blink","wink"},"reverse all possible actions"},
{0,{},"do nothing for zero"},
}
--</do not edit>

