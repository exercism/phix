global function to_rna(string dna)
    for i, nucleotide in dna do
        switch nucleotide do
            case 'C' : dna[i] = 'G'
            case 'G' : dna[i] = 'C'
            case 'A' : dna[i] = 'U'
            case 'T' : dna[i] = 'A'
        end switch
    end for
    return dna
end function

