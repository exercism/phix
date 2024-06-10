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
 {`exercise`, `difference-of-squares`},
 {`cases`,
  {-2,
   {-1,
    {`description`, `Square the sum of the numbers up to the given number`},
    {`cases`,
     {-2,
      {-1, {`uuid`, `e46c542b-31fc-4506-bcae-6b62b3268537`},
       {`description`, `square of sum 1`}, {`property`, `squareOfSum`},
       {`input`, {-1, {`number`, 1}}}, {`expected`, 1}},
      {-1, {`uuid`, `9b3f96cb-638d-41ee-99b7-b4f9c0622948`},
       {`description`, `square of sum 5`}, {`property`, `squareOfSum`},
       {`input`, {-1, {`number`, 5}}}, {`expected`, 225}},
      {-1, {`uuid`, `54ba043f-3c35-4d43-86ff-3a41625d5e86`},
       {`description`, `square of sum 100`}, {`property`, `squareOfSum`},
       {`input`, {-1, {`number`, 100}}}, {`expected`, 25502500}}}}},
   {-1,
    {`description`, `Sum the squares of the numbers up to the given number`},
    {`cases`,
     {-2,
      {-1, {`uuid`, `01d84507-b03e-4238-9395-dd61d03074b5`},
       {`description`, `sum of squares 1`}, {`property`, `sumOfSquares`},
       {`input`, {-1, {`number`, 1}}}, {`expected`, 1}},
      {-1, {`uuid`, `c93900cd-8cc2-4ca4-917b-dd3027023499`},
       {`description`, `sum of squares 5`}, {`property`, `sumOfSquares`},
       {`input`, {-1, {`number`, 5}}}, {`expected`, 55}},
      {-1, {`uuid`, `94807386-73e4-4d9e-8dec-69eb135b19e4`},
       {`description`, `sum of squares 100`}, {`property`, `sumOfSquares`},
       {`input`, {-1, {`number`, 100}}}, {`expected`, 338350}}}}},
   {-1, {`description`, `Subtract sum of squares from square of sums`},
    {`cases`,
     {-2,
      {-1, {`uuid`, `44f72ae6-31a7-437f-858d-2c0837adabb6`},
       {`description`, `difference of squares 1`},
       {`property`, `differenceOfSquares`}, {`input`, {-1, {`number`, 1}}},
       {`expected`, 0}},
      {-1, {`uuid`, `005cb2bf-a0c8-46f3-ae25-924029f8b00b`},
       {`description`, `difference of squares 5`},
       {`property`, `differenceOfSquares`}, {`input`, {-1, {`number`, 5}}},
       {`expected`, 170}},
      {-1, {`uuid`, `b1bf19de-9a16-41c0-a62b-1f02ecc0b036`},
       {`description`, `difference of squares 100`},
       {`property`, `differenceOfSquares`},
       {`input`, {-1, {`number`, 100}}}, {`expected`, 25164150}}}}}}}}
}
--</do not edit>

