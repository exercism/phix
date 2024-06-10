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
{{},{},"empty matrix"},
{{{0,0,0},
  {0,1,0},
  {0,0,0}},{{0,0,0},
            {0,0,0},
            {0,0,0}},"live cells with zero live neighbors die"},
{{{0,0,0},
  {0,1,0},
  {0,1,0}},{{0,0,0},
            {0,0,0},
            {0,0,0}},"live cells with only one live neighbor die"},
{{{1,0,1},
  {1,0,1},
  {1,0,1}},{{0,0,0},
            {1,0,1},
            {0,0,0}},"live cells with two live neighbors stay alive"},
{{{0,1,0},
  {1,0,0},
  {1,1,0}},{{0,0,0},
            {1,0,0},
            {1,1,0}},"live cells with three live neighbors stay alive"},
{{{1,1,0},
  {0,0,0},
  {1,0,0}},{{0,0,0},
            {1,1,0},
            {0,0,0}},"dead cells with three live neighbors become alive"},
{{{1,1,1},
  {1,1,1},
  {1,1,1}},{{1,0,1},
            {0,0,0},
            {1,0,1}},"live cells with four or more neighbors die"},
{{{1,1,0,1,1,0,0,0},
  {1,0,1,1,0,0,0,0},
  {1,1,1,0,0,1,1,1},
  {0,0,0,0,0,1,1,0},
  {1,0,0,0,1,1,0,0},
  {1,1,0,0,0,1,1,1},
  {0,0,1,0,1,0,0,1},
  {1,0,0,0,0,0,1,1}},{{1,1,0,1,1,0,0,0},
                      {0,0,0,0,0,1,1,0},
                      {1,0,1,1,1,1,0,1},
                      {1,0,0,0,0,0,0,1},
                      {1,1,0,0,1,0,0,1},
                      {1,1,0,1,0,0,0,1},
                      {1,0,0,0,0,0,0,0},
                      {0,0,0,0,0,0,1,1}},"bigger matrix"},
}
--</do not edit>

