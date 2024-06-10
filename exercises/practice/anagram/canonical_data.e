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
{"diaper",{"hello","world","zombies","pants"},{},"no matches"},
{"solemn",{"lemons","cherry","melons"},{"lemons","melons"},"detects two anagrams"},
{"good",{"dog","goody"},{},"does not detect anagram subsets"},
{"listen",{"enlists","google","inlets","banana"},{"inlets"},"detects anagram"},
{"allergy",{"gallery","ballerina","regally","clergy","largely","leading"},{"gallery","regally","largely"},"detects three anagrams"},
{"nose",{"Eons","ONES"},{"Eons","ONES"},"detects multiple anagrams with different case"},
{"mass",{"last"},{},"does not detect non-anagrams with identical checksum"},
{"Orchestra",{"cashregister","Carthorse","radishes"},{"Carthorse"},"detects anagrams case-insensitively"},
{"Orchestra",{"cashregister","carthorse","radishes"},{"carthorse"},"detects anagrams using case-insensitive subject"},
{"orchestra",{"cashregister","Carthorse","radishes"},{"Carthorse"},"detects anagrams using case-insensitive possible matches"},
{"go",{"goGoGO"},{},"does not detect an anagram if the original word is repeated"},
{"tapper",{"patter"},{},"anagrams must use all letters exactly once"},
{"BANANA",{"BANANA"},{},"words are not anagrams of themselves"},
{"BANANA",{"Banana"},{},"words are not anagrams of themselves even if letter case is partially different"},
{"BANANA",{"banana"},{},"words are not anagrams of themselves even if letter case is completely different"},
{"LISTEN",{"LISTEN","Silent"},{"Silent"},"words other than themselves can be anagrams"},
{"ΑΒΓ",{"ΒΓΑ","ΒΓΔ","γβα","αβγ"},{"ΒΓΑ","γβα"},"handles case of greek letters"},
{"a⬂",{"€a"},{},"different characters may have the same bytes"},
}
--</do not edit>

