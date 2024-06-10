// do not alter this:
global struct binary_search_tree nullable
    binary_search_tree left
    integer data
    binary_search_tree right
end struct

global function new_bst(integer data)
    // creates and return a new binary_search_tree.
    binary_search_tree root = new()
    root.data = data
    return root
end function

global procedure bst_insert(binary_search_tree bst, integer i)
    // bst_insert inserts an int into the binary_search_tree.
    if i <= bst.data then
        if bst.left == null then
            bst.left = new_bst(i)
        else
            bst_insert(bst.left,i)
        end if
    else
        if bst.right == null then
            bst.right = new_bst(i)
        else
            bst_insert(bst.right,i)
        end if
    end if
end procedure

global function bst_get_sorted_data(binary_search_tree bst)
    // bst_get_sorted_data returns the ordered contents of a binary_search_tree.
    sequence res = {}
    if bst.left != null then
        res = bst_get_sorted_data(bst.left)
    end if
    res &= bst.data
    if bst.right != null then
        res &= bst_get_sorted_data(bst.right)
    end if
    return res
end function

