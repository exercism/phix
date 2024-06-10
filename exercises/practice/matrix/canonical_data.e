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
{{{1}},'r',1,{1},"extract row from one number matrix"},
{{{1,2},{3,4}},'r',2,{3,4},"can extract row"},
{{{1,2},{10,20}},'r',2,{10,20},"extract row where numbers have different widths"},
{{{1,2,3},{4,5,6},{7,8,9},{8,7,6}},'r',4,{8,7,6},"can extract row from non-square matrix with no corresponding column"},
{{{1}},'c',1,{1},"extract column from one number matrix"},
{{{1,2,3},{4,5,6},{7,8,9}},'c',3,{3,6,9},"can extract column"},
{{{1,2,3,4},{5,6,7,8},{9,8,7,6}},'c',4,{4,8,6},"can extract column from non-square matrix with no corresponding row"},
{{{89,1903,3},{18,3,1},{9,4,800}},'c',2,{1903,3,4},"extract column where numbers have different widths"},
}
--</do not edit>

