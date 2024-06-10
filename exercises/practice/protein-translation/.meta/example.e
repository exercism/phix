local function rna_to_protein(string rna)
    switch rna do
        case "AUG"                  : return "Methionine"
        case "UUU","UUC"            : return "Phenylalanine"
        case "UUA","UUG"            : return "Leucine"
        case "UCU","UCC","UCA","UCG": return "Serine"
        case "UAU","UAC"            : return "Tyrosine"
        case "UGU","UGC"            : return "Cysteine"
        case "UGG"                  : return "Tryptophan"
        case "UAA","UAG","UGA"      : return "STOP"
        else                        : return "ERR"
    end switch
end function

global function proteins(string strand)
    integer l = length(strand)
    sequence res = {}
    for i=1 to l by 3 do
        if i+2>l then return "Invalid codon" end if
        string protein = rna_to_protein(strand[i..i+2])
        if protein="ERR" then return "Invalid codon" end if
        if protein="STOP" then exit end if
        res = append(res, protein)
    end for
    return res
end function


