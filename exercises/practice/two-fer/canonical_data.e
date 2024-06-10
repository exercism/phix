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
 {`exercise`, `two-fer`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `1cf3e15a-a3d7-4a87-aeb3-ba1b43bc8dce`},
    {`description`, `no name given`}, {`property`, `twoFer`},
    {`input`, {-1, {`name`, {-3, `null`}}}},
    {`expected`, `One for you, one for me.`}},
   {-1, {`uuid`, `b4c6dbb8-b4fb-42c2-bafd-10785abe7709`},
    {`description`, `a name given`}, {`property`, `twoFer`},
    {`input`, {-1, {`name`, `Alice`}}},
    {`expected`, `One for Alice, one for me.`}},
   {-1, {`uuid`, `3549048d-1a6e-4653-9a79-b0bda163e8d5`},
    {`description`, `another name given`}, {`property`, `twoFer`},
    {`input`, {-1, {`name`, `Bob`}}},
    {`expected`, `One for Bob, one for me.`}}}}}
}
--</do not edit>

