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
{"","",0,"empty strands"},
{"A","A",0,"single letter identical strands"},
{"G","T",1,"single letter different strands"},
{"GGACTGAAATCTG","GGACTGAAATCTG",0,"long identical strands"},
{"GGACGGATTCTG","AGGACGGATTCT",9,"long different strands"},
{"AATG","AAA","strands must be of equal length","disallow first strand longer"},
{"ATA","AGTG","strands must be of equal length","disallow second strand longer"},
{"","G","strands must be of equal length","disallow empty first strand"},
{"G","","strands must be of equal length","disallow empty second strand"},
}
--</do not edit>

