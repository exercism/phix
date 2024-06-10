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
{"",{{'A',0},{'C',0},{'G',0},{'T',0}},"empty strand"},
{"G",{{'A',0},{'C',0},{'G',1},{'T',0}},"can count one nucleotide in single-character input"},
{"GGGGGGG",{{'A',0},{'C',0},{'G',7},{'T',0}},"strand with repeated nucleotide"},
{"AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC",{{'A',20},{'C',12},{'G',17},{'T',21}},"strand with multiple nucleotides"},
{"AGXXACT",false,"strand with invalid nucleotides"},
}
--</do not edit>

