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
{{{9,8,7},{5,3,2},{6,6,7}},{{2,1}},"Can identify single saddle point"},
{{{}},{},"Can identify that empty matrix has no saddle points"},
{{{1,2,3},{3,1,2},{2,3,1}},{},"Can identify lack of saddle points when there are none"},
{{{4,5,4},{3,5,5},{1,5,4}},{{1,2},{2,2},{3,2}},"Can identify multiple saddle points in a column"},
{{{6,7,8},{5,5,5},{7,5,6}},{{2,1},{2,2},{2,3}},"Can identify multiple saddle points in a row"},
{{{8,7,9},{6,7,6},{3,2,5}},{{3,3}},"Can identify saddle point in bottom right corner"},
{{{3,1,3},{3,2,4}},{{1,1},{1,3}},"Can identify saddle points in a non square matrix"},
{{{2},{1},{4},{1}},{{2,1},{4,1}},"Can identify that saddle points in a single column matrix are those with the minimum value"},
{{{2,5,3,5}},{{1,2},{1,4}},"Can identify that saddle points in a single row matrix are those with the maximum value"},
}
--</do not edit>

