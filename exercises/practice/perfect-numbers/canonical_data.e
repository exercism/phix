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
{6,"perfect","Smallest perfect number is classified correctly"},
{28,"perfect","Medium perfect number is classified correctly"},
{33550336,"perfect","Large perfect number is classified correctly"},
{12,"abundant","Smallest abundant number is classified correctly"},
{30,"abundant","Medium abundant number is classified correctly"},
{33550335,"abundant","Large abundant number is classified correctly"},
{2,"deficient","Smallest prime deficient number is classified correctly"},
{4,"deficient","Smallest non-prime deficient number is classified correctly"},
{32,"deficient","Medium deficient number is classified correctly"},
{33550337,"deficient","Large deficient number is classified correctly"},
{1,"deficient","Edge case (no factors other than itself) is classified correctly"},
{0,false,"Zero is rejected (as it is not a positive integer)"},
{-1,false,"Negative integer is rejected (as it is not a positive integer)"},
}
--</do not edit>

