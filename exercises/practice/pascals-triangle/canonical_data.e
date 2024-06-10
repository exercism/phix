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
{0,{},"zero rows"},
{1,{{1}},"single row"},
{2,{{1},
    {1,1}},"two rows"},
{3,{{1},
    {1,1},
    {1,2,1}},"three rows"},
{4,{{1},
    {1,1},
    {1,2,1},
    {1,3,3,1}},"four rows"},
{5,{{1},
    {1,1},
    {1,2,1},
    {1,3,3,1},
    {1,4,6,4,1}},"five rows"},
{6,{{1},
    {1,1},
    {1,2,1},
    {1,3,3,1},
    {1,4,6,4,1},
    {1,5,10,10,5,1}},"six rows"},
{10,{{1},
     {1,1},
     {1,2,1},
     {1,3,3,1},
     {1,4,6,4,1},
     {1,5,10,10,5,1},
     {1,6,15,20,15,6,1},
     {1,7,21,35,35,21,7,1},
     {1,8,28,56,70,56,28,8,1},
     {1,9,36,84,126,126,84,36,9,1}},"ten rows"},
}
--</do not edit>

