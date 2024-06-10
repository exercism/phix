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
**NB** CONVERSION FROM JSON INCOMPLETE.
 (also splits smallest?/largest? whereas I want {lo,hi}?)
{1,9,{-1,{"value",1},{"factors",{-2,{-2,1,1}}}},"find the smallest palindrome from single digit factors"},
{1,9,{-1,{"value",9},{"factors",{-2,{-2,1,9},{-2,3,3}}}},"find the largest palindrome from single digit factors"},
{10,99,{-1,{"value",121},{"factors",{-2,{-2,11,11}}}},"find the smallest palindrome from double digit factors"},
{10,99,{-1,{"value",9009},{"factors",{-2,{-2,91,99}}}},"find the largest palindrome from double digit factors"},
{100,999,{-1,{"value",10201},{"factors",{-2,{-2,101,101}}}},"find the smallest palindrome from triple digit factors"},
{100,999,{-1,{"value",906609},{"factors",{-2,{-2,913,993}}}},"find the largest palindrome from triple digit factors"},
{1000,9999,{-1,{"value",1002001},{"factors",{-2,{-2,1001,1001}}}},"find the smallest palindrome from four digit factors"},
{1000,9999,{-1,{"value",99000099},{"factors",{-2,{-2,9901,9999}}}},"find the largest palindrome from four digit factors"},
{1002,1003,{-1,{"value",{-3,"null"}},{"factors",{-2}}},"empty result for smallest if no palindrome in the range"},
{15,15,{-1,{"value",{-3,"null"}},{"factors",{-2}}},"empty result for largest if no palindrome in the range"},
{10000,1,{-1,{"error","min must be <= max"}},"error result for smallest if min is more than max"},
{2,1,{-1,{"error","min must be <= max"}},"error result for largest if min is more than max"},
{3215,4000,{-1,{"value",10988901},{"factors",{-2,{-2,3297,3333}}}},"smallest product does not use the smallest factor"},
}
--</do not edit>

