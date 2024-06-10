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
{"Roster is empty when no student is added","roster",{},{}},
{"Add a student","add",{{"Aimee",2}},{true}},
{"Student is added to the roster","roster",{{"Aimee",2}},{"Aimee"}},
{"Adding multiple students in the same grade in the roster","add",{{"Blair",2},{"James",2},{"Paul",2}},{true,true,true}},
{"Multiple students in the same grade are added to the roster","roster",{{"Blair",2},{"James",2},{"Paul",2}},{"Blair","James","Paul"}},
{"Cannot add student to same grade in the roster more than once","add",{{"Blair",2},{"James",2},{"James",2},{"Paul",2}},{true,true,false,true}},
{"Student not added to same grade in the roster more than once","roster",{{"Blair",2},{"James",2},{"James",2},{"Paul",2}},{"Blair","James","Paul"}},
{"Adding students in multiple grades","add",{{"Chelsea",3},{"Logan",7}},{true,true}},
{"Students in multiple grades are added to the roster","roster",{{"Chelsea",3},{"Logan",7}},{"Chelsea","Logan"}},
{"Cannot add same student to multiple grades in the roster","add",{{"Blair",2},{"James",2},{"James",3},{"Paul",3}},{true,true,false,true}},
{"Student not added to multiple grades in the roster","roster",{{"Blair",2},{"James",2},{"James",3},{"Paul",3}},{"Blair","James","Paul"}},
{"Students are sorted by grades in the roster","roster",{{"Jim",3},{"Peter",2},{"Anna",1}},{"Anna","Peter","Jim"}},
{"Students are sorted by name in the roster","roster",{{"Peter",2},{"Zoe",2},{"Alex",2}},{"Alex","Peter","Zoe"}},
{"Students are sorted by grades and then by name in the roster","roster",{{"Peter",2},{"Anna",1},{"Barb",1},{"Zoe",2},{"Alex",2},{"Jim",3},{"Charlie",1}},{"Anna","Barb","Charlie","Alex","Peter","Zoe","Jim"}},
{"Grade is empty if no students in the roster","grade",{},{},1},
{"Grade is empty if no students in that grade","grade",{{"Peter",2},{"Zoe",2},{"Alex",2},{"Jim",3}},{},1},
{"Student not added to same grade more than once","grade",{{"Blair",2},{"James",2},{"James",2},{"Paul",2}},{"Blair","James","Paul"},2},
{"Student not added to multiple grades","grade",{{"Blair",2},{"James",2},{"James",3},{"Paul",3}},{"Blair","James"},2},
{"Student not added to other grade for multiple grades","grade",{{"Blair",2},{"James",2},{"James",3},{"Paul",3}},{"Paul"},3},
{"Students are sorted by name in a grade","grade",{{"Franklin",5},{"Bradley",5},{"Jeff",1}},{"Bradley","Franklin"},5},
}
--</do not edit>

