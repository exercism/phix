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
{"[]",true,"paired square brackets"},
{"",true,"empty string"},
{"[[",false,"unpaired brackets"},
{"}{",false,"wrong ordered brackets"},
{"{]",false,"wrong closing bracket"},
{"{ }",true,"paired with whitespace"},
{"{[])",false,"partially paired brackets"},
{"{[]}",true,"simple nested brackets"},
{"{}[]",true,"several paired brackets"},
{"([{}({}[])])",true,"paired and nested brackets"},
{"{[)][]}",false,"unopened closing brackets"},
{"([{])",false,"unpaired and nested brackets"},
{"[({]})",false,"paired and wrong nested brackets"},
{"[({}])",false,"paired and wrong nested brackets but innermost are correct"},
{"{}[",false,"paired and incomplete brackets"},
{"[]]",false,"too many closing brackets"},
{")()",false,"early unexpected brackets"},
{"{)()",false,"early mismatched brackets"},
{"(((185 + 223.85) * 15) - 543)/2",true,"math expression"},
{`\left(\begin{array}{cc} \frac{1}{3} & x\\ \mathrm{e}^{x} &... x^2 \end{array}\right)`,true,"complex latex expression"},
}
--</do not edit>

