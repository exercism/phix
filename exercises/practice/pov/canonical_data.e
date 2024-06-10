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
{
{{"x",{}},"x",
 {"x",{}},"Results in the same tree if the input tree is a singleton"},
{{"parent",{{"sibling",{}},{"x",{}}}},"x",
 {"x",{{"parent",{{"sibling",{}}}}}},"Can reroot a tree with a parent and one sibling"},
{{"parent",{{"a",{}},{"b",{}},{"c",{}},{"x",{}}}},"x",
 {"x",{{"parent",{{"a",{}},{"b",{}},{"c",{}}}}}},"Can reroot a tree with a parent and many siblings"},
{{"level-0",{{"level-1",{{"level-2",{{"level-3",{{"x",{}}}}}}}}}},"x",
 {"x",{{"level-3",{{"level-2",{{"level-1",{{"level-0",{}}}}}}}}}},"Can reroot a tree with new root deeply nested in tree"},
{{"parent",{{"x",{{"kid-0",{}},{"kid-1",{}}}}}},"x",
 {"x",{{"kid-0",{}},{"kid-1",{}},{"parent",{}}}},"Moves children of the new root to same level as former parent"},
{{"grandparent",{{"parent",{{"sibling-0",{}},{"sibling-1",{}},{"x",{{"kid-0",{}},{"kid-1",{}}}}}},{"uncle",{{"cousin-0",{}},{"cousin-1",{}}}}}},"x",
 {"x",{{"kid-0",{}},{"kid-1",{}},{"parent",{{"grandparent",{{"uncle",{{"cousin-0",{}},{"cousin-1",{}}}}}},{"sibling-0",{}},{"sibling-1",{}}}}}},"Can reroot a complex tree with cousins"},
{{"x",{}},"nonexistent",
 0,"Errors if target does not exist in a singleton tree"},
{{"parent",{{"sibling-0",{}},{"sibling-1",{}},{"x",{{"kid-0",{}},{"kid-1",{}}}}}},"nonexistent",
 0,"Errors if target does not exist in a large tree"},
},
{
{"x","parent",{"parent",{{"sibling",{}},{"x",{}}}},
 {"x","parent"},"Can find path to parent"},
{"x","b",{"parent",{{"a",{}},{"b",{}},{"c",{}},{"x",{}}}},
 {"x","parent","b"},"Can find path to sibling"},
{"x","cousin-1",{"grandparent",{{"parent",{{"sibling-0",{}},{"sibling-1",{}},{"x",{{"kid-0",{}},{"kid-1",{}}}}}},{"uncle",{{"cousin-0",{}},{"cousin-1",{}}}}}},
 {"x","parent","grandparent","uncle","cousin-1"},"Can find path to cousin"},
{"x","sibling-1",{"grandparent",{{"parent",{{"sibling-0",{}},{"sibling-1",{}},{"x",{}}}}}},
 {"x","parent","sibling-1"},"Can find path not involving root"},
{"a","c",{"parent",{{"a",{}},{"b",{}},{"c",{}},{"x",{}}}},
 {"a","parent","c"},"Can find path from nodes other than x"},
{"x","nonexistent",{"parent",{{"sibling-0",{}},{"sibling-1",{}},{"x",{{"kid-0",{}},{"kid-1",{}}}}}},
 0,"Errors if destination does not exist"},
{"nonexistent","x",{"parent",{{"sibling-0",{}},{"sibling-1",{}},{"x",{{"kid-0",{}},{"kid-1",{}}}}}},
 0,"Errors if source does not exist"},
},
}
--</do not edit>

