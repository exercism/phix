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
{"empty",{},true,"sets with no elements are empty"},
{"empty",{1},false,"sets with elements are not empty"},
{"contains",{},1,false,"nothing is contained in an empty set"},
{"contains",{1,2,3},1,true,"when the element is in the set"},
{"contains",{1,2,3},4,false,"when the element is not in the set"},
{"subset",{},{},true,"empty set is a subset of another empty set"},
{"subset",{},{1},true,"empty set is a subset of non-empty set"},
{"subset",{1},{},false,"non-empty set is not a subset of empty set"},
{"subset",{1,2,3},{1,2,3},true,"set is a subset of set with exact same elements"},
{"subset",{1,2,3},{4,1,2,3},true,"set is a subset of larger set with same elements"},
{"subset",{1,2,3},{4,1,3},false,"set is not a subset of set that does not contain its elements"},
{"disjoint",{},{},true,"the empty set is disjoint with itself"},
{"disjoint",{},{1},true,"empty set is disjoint with non-empty set"},
{"disjoint",{1},{},true,"non-empty set is disjoint with empty set"},
{"disjoint",{1,2},{2,3},false,"sets are not disjoint if they share an element"},
{"disjoint",{1,2},{3,4},true,"sets are disjoint if they share no elements"},
{"equal",{},{},true,"empty sets are equal"},
{"equal",{},{1,2,3},false,"empty set is not equal to non-empty set"},
{"equal",{1,2,3},{},false,"non-empty set is not equal to empty set"},
{"equal",{1,2},{2,1},true,"sets with the same elements are equal"},
{"equal",{1,2,3},{1,2,4},false,"sets with different elements are not equal"},
{"equal",{1,2,3},{1,2,3,4},false,"set is not equal to larger set with same elements"},
{"equal",{1},{1,1},true,"set is equal to a set constructed from an array with duplicates"},
{"add",{},3,{3},"add to empty set"},
{"add",{1,2,4},3,{1,2,3,4},"add to non-empty set"},
{"add",{1,2,3},3,{1,2,3},"adding an existing element does not change the set"},
{"intersect",{},{},{},"intersection of two empty sets is an empty set"},
{"intersect",{},{2,3,5},{},"intersection of an empty set and non-empty set is an empty set"},
{"intersect",{1,2,3,4},{},{},"intersection of a non-empty set and an empty set is an empty set"},
{"intersect",{1,2,3},{4,5,6},{},"intersection of two sets with no shared elements is an empty set"},
{"intersect",{1,2,3,4},{2,3,5},{2,3},"intersection of two sets with shared elements is a set of the shared elements"},
{"difference",{},{},{},"difference of two empty sets is an empty set"},
{"difference",{},{2,3,5},{},"difference of empty set and non-empty set is an empty set"},
{"difference",{1,2,3,4},{},{1,2,3,4},"difference of a non-empty set and an empty set is the non-empty set"},
{"difference",{1,2,3},{2,4},{1,3},"difference of two non-empty sets is a set of elements that are only in the first set"},
{"difference",{1,1},{1},{},"difference removes all duplicates in the first set"},
{"union",{},{},{},"union of empty sets is an empty set"},
{"union",{},{2},{2},"union of an empty set and non-empty set is the non-empty set"},
{"union",{1,3},{},{1,3},"union of a non-empty set and empty set is the non-empty set"},
{"union",{1,3},{2,3},{1,2,3},"union of non-empty sets contains all unique elements"},
}
--</do not edit>

