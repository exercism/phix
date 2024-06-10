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
{12,{{3,4,5}},"triplets whose sum is 12"},
{108,{{27,36,45}},"triplets whose sum is 108"},
{1000,{{200,375,425}},"triplets whose sum is 1000"},
{1001,{},"no matching triplets for 1001"},
{90,{{9,40,41},{15,36,39}},"returns all matching triplets"},
{840,{{40,399,401},{56,390,394},{105,360,375},{120,350,370},{140,336,364},{168,315,357},{210,280,350},{240,252,348}},"several matching triplets"},
{30000,{{1200,14375,14425},{1875,14000,14125},{5000,12000,13000},{6000,11250,12750},{7500,10000,12500}},"triplets for large number"},
}
--</do not edit>

