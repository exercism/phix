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
{100,{},0,"no items"},
{10,{{100,1}},0,"one item, too heavy"},
{10,{{2,5},{2,5},{2,5},{2,5},{10,21}},21,"five items (cannot be greedy by weight)"},
{10,{{2,20},{2,20},{2,20},{2,20},{10,50}},80,"five items (cannot be greedy by value)"},
{10,{{5,10},{4,40},{6,30},{4,50}},90,"example knapsack"},
{104,{{25,350},{35,400},{45,450},{5,20},{25,70},{3,8},{2,5},{2,5}},900,"8 items"},
{750,{{70,135},{73,139},{77,149},{80,150},{82,156},{87,163},{90,173},{94,184},{98,192},{106,201},{110,210},{113,214},{115,221},{118,229},{120,240}},1458,"15 items"},
}
--</do not edit>

