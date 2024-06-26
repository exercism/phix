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
{-1,
 {`exercise`, `gigasecond`},
 {`comments`,
  {-2, `The basic test is to add one gigasecond to a few ordinary dates.`,
   `Most test programs currently check only the date and ignore the time.`,
   `For languages with a native date-time type though, expected times`,
   `here show the correct seconds, ignoring leap seconds.`,
   `The date and time formats here are per`,
   `https://www.ecma-international.org/ecma-262/5.1/#sec-15.9.1.15.`, ``,
   `Finally, as a demonstration but not really a test,`,
   `some languages demonstrate the add function by inviting the`,
   `solver to include their birthdate in either the solution code`,
   `or test program.  The test program then shows or tests their`,
   `gigasecond anniversary.`}},
 {`cases`,
  {-2,
   {-1, {`uuid`, `92fbe71c-ea52-4fac-bd77-be38023cacf7`},
    {`description`, `date only specification of time`},
    {`scenarios`, {-2, `date`}}, {`property`, `add`},
    {`input`, {-1, {`moment`, `2011-04-25`}}},
    {`expected`, `2043-01-01T01:46:40`}},
   {-1, {`uuid`, `6d86dd16-6f7a-47be-9e58-bb9fb2ae1433`},
    {`description`, `second test for date only specification of time`},
    {`scenarios`, {-2, `date`}}, {`property`, `add`},
    {`input`, {-1, {`moment`, `1977-06-13`}}},
    {`expected`, `2009-02-19T01:46:40`}},
   {-1, {`uuid`, `77eb8502-2bca-4d92-89d9-7b39ace28dd5`},
    {`description`, `third test for date only specification of time`},
    {`scenarios`, {-2, `date`}}, {`property`, `add`},
    {`input`, {-1, {`moment`, `1959-07-19`}}},
    {`expected`, `1991-03-27T01:46:40`}},
   {-1, {`uuid`, `c9d89a7d-06f8-4e28-a305-64f1b2abc693`},
    {`description`, `full time specified`}, {`scenarios`, {-2, `datetime`}},
    {`property`, `add`}, {`input`, {-1, {`moment`, `2015-01-24T22:00:00`}}},
    {`expected`, `2046-10-02T23:46:40`}},
   {-1, {`uuid`, `09d4e30e-728a-4b52-9005-be44a58d9eba`},
    {`description`, `full time with day roll-over`},
    {`scenarios`, {-2, `datetime`}}, {`property`, `add`},
    {`input`, {-1, {`moment`, `2015-01-24T23:59:59`}}},
    {`expected`, `2046-10-03T01:46:39`}},
   {-1, {`uuid`, `fcec307c-7529-49ab-b0fe-20309197618a`},
    {`description`, `does not mutate the input`},
    {`comments`,
     {-2,
      `This test case is for languages with a mutable date or datetime  `,
      `datastructure. After running add(moment), moment should remain   `,
      `the same.`}}, {`scenarios`, {-2, `immutable`}},
    {`property`, `isEqual`},
    {`input`, {-1, {`moment`, `2015-01-24T23:59:59`}}},
    {`expected`, `moment === moment`}}}}}
}
--</do not edit>

