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
{{},"no rows"},
{{{"",""}},"no columns"},
{{{"   ","   "},
  {"   ","   "},
  {"   ","   "}},"no mines"},
{{{"***","***"},
  {"***","***"},
  {"***","***"}},"minefield with only mines"},
{{{"   ","111"},
  {" * ","1*1"},
  {"   ","111"}},"mine surrounded by spaces"},
{{{"***","***"},
  {"* *","*8*"},
  {"***","***"}},"space surrounded by mines"},
{{{" * * ","1*2*1"}},"horizontal line"},
{{{"*   *","*1 1*"}},"horizontal line, mines at edges"},
{{{" ","1"},
  {"*","*"},
  {" ","2"},
  {"*","*"},
  {" ","1"}},"vertical line"},
{{{"*","*"},
  {" ","1"},
  {" "," "},
  {" ","1"},
  {"*","*"}},"vertical line, mines at edges"},
{{{"  *  "," 2*2 "},
  {"  *  ","25*52"},
  {"*****","*****"},
  {"  *  ","25*52"},
  {"  *  "," 2*2 "}},"cross"},
{{{" *  * ","1*22*1"},
  {"  *   ","12*322"},
  {"    * "," 123*2"},
  {"   * *","112*4*"},
  {" *  * ","1*22*2"},
  {"      ","111111"}},"large minefield"},
}
--</do not edit>

