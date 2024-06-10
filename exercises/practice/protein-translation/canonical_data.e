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
{"",{},"Empty RNA sequence results in no proteins"},
{"AUG",{"Methionine"},"Methionine RNA sequence"},
{"UUU",{"Phenylalanine"},"Phenylalanine RNA sequence 1"},
{"UUC",{"Phenylalanine"},"Phenylalanine RNA sequence 2"},
{"UUA",{"Leucine"},"Leucine RNA sequence 1"},
{"UUG",{"Leucine"},"Leucine RNA sequence 2"},
{"UCU",{"Serine"},"Serine RNA sequence 1"},
{"UCC",{"Serine"},"Serine RNA sequence 2"},
{"UCA",{"Serine"},"Serine RNA sequence 3"},
{"UCG",{"Serine"},"Serine RNA sequence 4"},
{"UAU",{"Tyrosine"},"Tyrosine RNA sequence 1"},
{"UAC",{"Tyrosine"},"Tyrosine RNA sequence 2"},
{"UGU",{"Cysteine"},"Cysteine RNA sequence 1"},
{"UGC",{"Cysteine"},"Cysteine RNA sequence 2"},
{"UGG",{"Tryptophan"},"Tryptophan RNA sequence"},
{"UAA",{},"STOP codon RNA sequence 1"},
{"UAG",{},"STOP codon RNA sequence 2"},
{"UGA",{},"STOP codon RNA sequence 3"},
{"UUUUUU",{"Phenylalanine","Phenylalanine"},"Sequence of two protein codons translates into proteins"},
{"UUAUUG",{"Leucine","Leucine"},"Sequence of two different protein codons translates into proteins"},
{"AUGUUUUGG",{"Methionine","Phenylalanine","Tryptophan"},"Translate RNA strand into correct protein list"},
{"UAGUGG",{},"Translation stops if STOP codon at beginning of sequence"},
{"UGGUAG",{"Tryptophan"},"Translation stops if STOP codon at end of two-codon sequence"},
{"AUGUUUUAA",{"Methionine","Phenylalanine"},"Translation stops if STOP codon at end of three-codon sequence"},
{"UGGUAGUGG",{"Tryptophan"},"Translation stops if STOP codon in middle of three-codon sequence"},
{"UGGUGUUAUUAAUGGUUU",{"Tryptophan","Cysteine","Tyrosine"},"Translation stops if STOP codon in middle of six-codon sequence"},
{"XYZ","Invalid codon",`Unknown amino acids, not part of a codon, can't translate`},
{"AUGU","Invalid codon",`Incomplete RNA sequence can't translate`},
{"UUCUUCUAAUGGU",{"Phenylalanine","Phenylalanine"},"Incomplete RNA sequence can translate if valid until a STOP codon"},
}
--</do not edit>

