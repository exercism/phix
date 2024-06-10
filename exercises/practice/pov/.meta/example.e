global enum LABEL, CHILDREN

local function get_path(sequence tree, string nto)
    // returns {idx} to get from root to nto
    if tree[LABEL] == nto then return {} end if
    for i, ch in tree[CHILDREN] do
        object res = get_path(ch,nto)
        if res != null then
            -- aside: one of the odder p2js violations...
            --        eg/esp i&res moans like hell, but at
            --         least it states what it don't like.
            return deep_copy({i}) & res
        end if
    end for
    return null
end function

global function from_pov(sequence tree, string nfrom)
    object path = get_path(tree,nfrom)
    if path=null then return null end if
    for i in path do
        sequence n = tree[CHILDREN][i]
        tree = {tree[LABEL],tree[CHILDREN][1..i-1] & tree[CHILDREN][i+1..$]}
        n = {n[LABEL],append(deep_copy(n[CHILDREN]),tree)}
        tree = n
    end for
    return tree
end function

local function get_path_names(sequence tree, string nto)
    // returns {label} from root to nto
    // merging this with get_path() might be sensible... (3rd arg)
    if tree[LABEL] == nto then return {nto} end if
    for i, ch in tree[CHILDREN] do
        object res = get_path_names(ch,nto)
        if res != null then
            -- aside: quite why this don't need deep_copy() escapes me...
            return {tree[LABEL]} & res
        end if
    end for
    return null
end function

global function path_to(string nfrom, nto, sequence tree)
    // every other solution reparents/from_pov()'s the tree,
    // but this is perfectly adequate & much more efficient.
    object one = get_path_names(tree,nfrom),
           two = get_path_names(tree,nto)
    if one=null or two=null then return null end if
    integer l = min(length(one),length(two))
    while l>=2 and one[2]=two[2] do
        // aside: 3 stmts wd be way more efficient...
        {one,two,l} = {one[2..$],two[2..$],l-1}
    end while
    one = reverse(one)
    if length(two) then one &= two[2..$] end if
    return one
end function

