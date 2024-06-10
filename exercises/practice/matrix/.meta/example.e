global function row(sequence matrix, integer idx)
    return matrix[idx]
end function

global function col(sequence matrix, integer idx)
    return vslice(matrix,idx)
end function

