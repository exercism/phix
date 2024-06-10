// do not alter this:
global struct binary_search_tree nullable
    binary_search_tree left
    integer data
    binary_search_tree right
end struct

global function new_bst(integer data)
    // creates and return a new binary_search_tree.
    crash("please implement new_bst")
end function

global procedure bst_insert(binary_search_tree bst, integer i)
    // bst_insert inserts an int into the binary_search_tree.
    // Inserts happen based on the rules of a binary search tree
    crash("please implement bst_insert")
end procedure

global function bst_get_sorted_data(binary_search_tree bst)
    // bst_get_sorted_data returns the ordered contents of a binary_search_tree.
    // The values are in increasing order starting with the lowest int value.
    // A binary_search_tree that has had the numbers shuffle({1,3,7,5}) added 
    // should (always) return {1,3,5,7}.
    crash("please implement bst_get_sorted_data")
end function

