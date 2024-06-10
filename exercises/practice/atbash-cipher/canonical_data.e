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
{"yes","bvh","encode yes"},
{"no","ml","encode no"},
{"OMG","lnt","encode OMG"},
{"O M G","lnt","encode spaces"},
{"mindblowingly","nrmwy oldrm tob","encode mindblowingly"},
{"Testing,1 2 3, testing.","gvhgr mt123 gvhgr mt","encode numbers"},
{"Truth is fiction.","gifgs rhurx grlm","encode deep thought"},
{"The quick brown fox jumps over the lazy dog.","gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt","encode all the letters"},
{"exercism","vcvix rhn","decode exercism"},
{"anobstacleisoftenasteppingstone","zmlyh gzxov rhlug vmzhg vkkrm thglm v","decode a sentence"},
{"testing123testing","gvhgr mt123 gvhgr mt","decode numbers"},
{"thequickbrownfoxjumpsoverthelazydog","gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt","decode all the letters"},
{"exercism","vc vix    r hn","decode with too many spaces"},
{"anobstacleisoftenasteppingstone","zmlyhgzxovrhlugvmzhgvkkrmthglmv","decode with no spaces"},
}
--</do not edit>

