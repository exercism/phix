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
{3,5,1,"one",{"one",4,5},"Measure using bucket one of size 3 and bucket two of size 5 - start with bucket one"},
{3,5,1,"two",{"two",8,3},"Measure using bucket one of size 3 and bucket two of size 5 - start with bucket two"},
{7,11,2,"one",{"one",14,11},"Measure using bucket one of size 7 and bucket two of size 11 - start with bucket one"},
{7,11,2,"two",{"two",18,7},"Measure using bucket one of size 7 and bucket two of size 11 - start with bucket two"},
{1,3,3,"two",{"two",1,0},"Measure one step using bucket one of size 1 and bucket two of size 3 - start with bucket two"},
{2,3,3,"one",{"two",2,2},"Measure using bucket one of size 2 and bucket two of size 3 - start with bucket one and end with bucket two"},
{6,15,5,"one","impossible","Not possible to reach the goal"},
{6,15,9,"one",{"two",10,0},"With the same buckets but a different goal, then it is possible"},
{5,7,8,"one","impossible","Goal larger than both buckets is impossible"},
}
--</do not edit>

