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
 {`exercise`, `armstrong-numbers`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `c1ed103c-258d-45b2-be73-d8c6d9580c7b`},
    {`description`, `Zero is an Armstrong number`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 0}}},
    {`expected`, {-3, `true`}}},
   {-1, {`uuid`, `579e8f03-9659-4b85-a1a2-d64350f6b17a`},
    {`description`, `Single-digit numbers are Armstrong numbers`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 5}}},
    {`expected`, {-3, `true`}}},
   {-1, {`uuid`, `2d6db9dc-5bf8-4976-a90b-b2c2b9feba60`},
    {`description`, `There are no two-digit Armstrong numbers`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 10}}},
    {`expected`, {-3, `false`}}},
   {-1, {`uuid`, `509c087f-e327-4113-a7d2-26a4e9d18283`},
    {`description`, `Three-digit number that is an Armstrong number`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 153}}},
    {`expected`, {-3, `true`}}},
   {-1, {`uuid`, `7154547d-c2ce-468d-b214-4cb953b870cf`},
    {`description`, `Three-digit number that is not an Armstrong number`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 100}}},
    {`expected`, {-3, `false`}}},
   {-1, {`uuid`, `6bac5b7b-42e9-4ecb-a8b0-4832229aa103`},
    {`description`, `Four-digit number that is an Armstrong number`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 9474}}},
    {`expected`, {-3, `true`}}},
   {-1, {`uuid`, `eed4b331-af80-45b5-a80b-19c9ea444b2e`},
    {`description`, `Four-digit number that is not an Armstrong number`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 9475}}},
    {`expected`, {-3, `false`}}},
   {-1, {`uuid`, `f971ced7-8d68-4758-aea1-d4194900b864`},
    {`description`, `Seven-digit number that is an Armstrong number`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 9926315}}},
    {`expected`, {-3, `true`}}},
   {-1, {`uuid`, `7ee45d52-5d35-4fbd-b6f1-5c8cd8a67f18`},
    {`description`, `Seven-digit number that is not an Armstrong number`},
    {`property`, `isArmstrongNumber`}, {`input`, {-1, {`number`, 9926314}}},
    {`expected`, {-3, `false`}}},
   {-1, {`uuid`, `5ee2fdf8-334e-4a46-bb8d-e5c19c02c148`},
    {`description`, `Armstrong number containing seven zeroes`},
    {`comments`,
     {-2,
      `The numeric size of this input number is 108 bits. Consider skipping this test if appropriate.`}},
    {`scenarios`, {-2, `big-integer`}}, {`property`, `isArmstrongNumber`},
    {`input`, {-1, {`number`, 1.86709961e+32}}}, {`expected`, {-3, `true`}}},
   {-1, {`uuid`, `12ffbf10-307a-434e-b4ad-c925680e1dd4`},
    {`description`, `The largest and last Armstrong number`},
    {`comments`,
     {-2,
      `The numeric size of this input number is 127 bits. Consider skipping this test if appropriate.`}},
    {`scenarios`, {-2, `big-integer`}}, {`property`, `isArmstrongNumber`},
    {`input`, {-1, {`number`, 1.15132219e+38}}}, {`expected`, {-3, `true`}}}}}}
}
--</do not edit>

