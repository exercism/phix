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
{"word",{{"word",1}},"count one word"},
{"one of each",{{"each",1},{"of",1},{"one",1}},"count one of each word"},
{"one fish two fish red fish blue fish",{{"blue",1},{"fish",4},{"one",1},{"red",1},{"two",1}},"multiple occurrences of a word"},
{"one,two,three",{{"one",1},{"three",1},{"two",1}},"handles cramped lists"},
{"one,\ntwo,\nthree",{{"one",1},{"three",1},{"two",1}},"handles expanded lists"},
{"car: carpet as java: javascript!!&@$%^&",{{"as",1},{"car",1},{"carpet",1},{"java",1},{"javascript",1}},"ignore punctuation"},
{"testing, 1, 2 testing",{{"1",1},{"2",1},{"testing",2}},"include numbers"},
{"go Go GO Stop stop",{{"go",3},{"stop",2}},"normalize case"},
{`'First: don't laugh. Then: don't cry. You're getting it.'`,{{"cry",1},{`don't`,2},{"first",1},{"getting",1},{"it",1},{"laugh",1},{"then",1},{`you're`,1}},"with apostrophes"},
{`Joe can't tell between 'large' and large.`,{{"and",1},{"between",1},{`can't`,1},{"joe",1},{"large",2},{"tell",1}},"with quotations"},
{`Joe can't tell between app, apple and a.`,{{"a",1},{"and",1},{"app",1},{"apple",1},{"between",1},{`can't`,1},{"joe",1},{"tell",1}},"substrings from the beginning"},
{" multiple   whitespaces",{{"multiple",1},{"whitespaces",1}},"multiple spaces not detected as a word"},
{",\n,one,\n ,two \n \'three\'",{{"one",1},{"three",1},{"two",1}},"alternating word separators not detected as a word"},
{`can, can't, 'can't'`,{{"can",1},{`can't`,2}},"quotation for word with apostrophe"},
}
--</do not edit>

