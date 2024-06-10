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
{0,{},"empty spiral"},
{1,{{ 1}},"trivial spiral"},
{2,{{ 1, 2},
    { 4, 3}},"spiral of size 2"},
{3,{{ 1, 2, 3},
    { 8, 9, 4},
    { 7, 6, 5}},"spiral of size 3"},
{4,{{ 1, 2, 3, 4},
    {12,13,14, 5},
    {11,16,15, 6},
    {10, 9, 8, 7}},"spiral of size 4"},
{5,{{ 1, 2, 3, 4, 5},
    {16,17,18,19, 6},
    {15,24,25,20, 7},
    {14,23,22,21, 8},
    {13,12,11,10, 9}},"spiral of size 5"},
}
--</do not edit>

