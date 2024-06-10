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
 {`exercise`, `grains`},
 {`comments`,
  {-2, `The final tests of square test error conditions`,
   `In these cases you should expect an error as is idiomatic for your language`}},
 {`cases`,
  {-2,
   {-1, {`description`, `returns the number of grains on the square`},
    {`cases`,
     {-2,
      {-1, {`uuid`, `9fbde8de-36b2-49de-baf2-cd42d6f28405`},
       {`description`, `grains on square 1`}, {`property`, `square`},
       {`input`, {-1, {`square`, 1}}}, {`expected`, 1}},
      {-1, {`uuid`, `ee1f30c2-01d8-4298-b25d-c677331b5e6d`},
       {`description`, `grains on square 2`}, {`property`, `square`},
       {`input`, {-1, {`square`, 2}}}, {`expected`, 2}},
      {-1, {`uuid`, `10f45584-2fc3-4875-8ec6-666065d1163b`},
       {`description`, `grains on square 3`}, {`property`, `square`},
       {`input`, {-1, {`square`, 3}}}, {`expected`, 4}},
      {-1, {`uuid`, `a7cbe01b-36f4-4601-b053-c5f6ae055170`},
       {`description`, `grains on square 4`}, {`property`, `square`},
       {`input`, {-1, {`square`, 4}}}, {`expected`, 8}},
      {-1, {`uuid`, `c50acc89-8535-44e4-918f-b848ad2817d4`},
       {`description`, `grains on square 16`}, {`property`, `square`},
       {`input`, {-1, {`square`, 16}}}, {`expected`, 32768}},
      {-1, {`uuid`, `acd81b46-c2ad-4951-b848-80d15ed5a04f`},
       {`description`, `grains on square 32`}, {`property`, `square`},
       {`input`, {-1, {`square`, 32}}}, {`expected`, 2147483648}},
      {-1, {`uuid`, `c73b470a-5efb-4d53-9ac6-c5f6487f227b`},
       {`description`, `grains on square 64`}, {`property`, `square`},
       {`input`, {-1, {`square`, 64}}}, {`expected`, 9.223372037e+18}},
      {-1, {`uuid`, `1d47d832-3e85-4974-9466-5bd35af484e3`},
       {`description`, `square 0 is invalid`}, {`property`, `square`},
       {`input`, {-1, {`square`, 0}}},
       {`expected`, {-1, {`error`, `square must be between 1 and 64`}}}},
      {-1, {`uuid`, `61974483-eeb2-465e-be54-ca5dde366453`},
       {`description`, `negative square is invalid`},
       {`property`, `square`}, {`input`, {-1, {`square`, -1}}},
       {`expected`, {-1, {`error`, `square must be between 1 and 64`}}}},
      {-1, {`uuid`, `a95e4374-f32c-45a7-a10d-ffec475c012f`},
       {`description`, `square greater than 64 is invalid`},
       {`property`, `square`}, {`input`, {-1, {`square`, 65}}},
       {`expected`, {-1, {`error`, `square must be between 1 and 64`}}}}}}},
   {-1, {`uuid`, `6eb07385-3659-4b45-a6be-9dc474222750`},
    {`description`, `returns the total number of grains on the board`},
    {`property`, `total`}, {`input`, {-1}}, {`expected`, 1.844674407e+19}}}}}
}
--</do not edit>

