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
{1,0,"zero steps for one"},
{16,4,"divide if even"},
{12,9,"even and odd steps"},
{1000000,152,"large number of even and odd steps"},
{0,"Only positive integers are allowed","zero is an error"},
{-15,"Only positive integers are allowed","negative value is an error"},
}
--</do not edit>

