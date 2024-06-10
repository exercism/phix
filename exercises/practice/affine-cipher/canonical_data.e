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
{"yes",5,7,"xbt","encode yes"},
{"no",15,18,"fu","encode no"},
{"OMG",21,3,"lvz","encode OMG"},
{"O M G",25,47,"hjp","encode O M G"},
{"mindblowingly",11,15,"rzcwa gnxzc dgt","encode mindblowingly"},
{"Testing,1 2 3, testing.",3,4,"jqgjc rw123 jqgjc rw","encode numbers"},
{"Truth is fiction.",5,17,"iynia fdqfb ifje","encode deep thought"},
{"The quick brown fox jumps over the lazy dog.",17,33,"swxtj npvyk lruol iejdc blaxk swxmh qzglf","encode all the letters"},
{"This is a test.",6,17,"a and m must be coprime.","encode with a not coprime to m"},
{"tytgn fjr",3,7,"exercism","decode exercism"},
{"qdwju nqcro muwhn odqun oppmd aunwd o",19,16,"anobstacleisoftenasteppingstone","decode a sentence"},
{"odpoz ub123 odpoz ub",25,7,"testing123testing","decode numbers"},
{"swxtj npvyk lruol iejdc blaxk swxmh qzglf",17,33,"thequickbrownfoxjumpsoverthelazydog","decode all the letters"},
{"swxtjnpvyklruoliejdcblaxkswxmhqzglf",17,33,"thequickbrownfoxjumpsoverthelazydog","decode with no spaces in input"},
{"vszzm    cly   yd cg    qdp",15,16,"jollygreengiant","decode with too many spaces"},
{"Test",13,5,"a and m must be coprime.","decode with a not coprime to m"},
}
--</do not edit>

