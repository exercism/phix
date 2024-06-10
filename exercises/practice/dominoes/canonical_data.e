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
{{},true,"empty input = empty output"},
{{{1,1}},true,"singleton input = singleton output"},
{{{1,2}},false,`singleton that can't be chained`},
{{{1,2},{3,1},{2,3}},true,"three elements"},
{{{1,2},{1,3},{2,3}},true,"can reverse dominoes"},
{{{1,2},{4,1},{2,3}},false,`can't be chained`},
{{{1,1},{2,2}},false,"disconnected - simple"},
{{{1,2},{2,1},{3,4},{4,3}},false,"disconnected - double loop"},
{{{1,2},{2,3},{3,1},{4,4}},false,"disconnected - single isolated"},
{{{1,2},{2,3},{3,1},{2,4},{2,4}},true,"need backtrack"},
{{{1,2},{2,3},{3,1},{1,1},{2,2},{3,3}},true,"separate loops"},
{{{1,2},{5,3},{3,1},{1,2},{2,4},{1,6},{2,3},{3,4},{5,6}},true,"nine elements"},
{{{1,2},{2,3},{3,1},{4,5},{5,6},{6,4}},false,"separate three-domino loops"},
}
--</do not edit>

