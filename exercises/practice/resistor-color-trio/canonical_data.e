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
{{"orange","orange","black"},`33 ohms`,"Orange and orange and black"},
{{"blue","grey","brown"},`680 ohms`,"Blue and grey and brown"},
{{"red","black","red"},`2 kiloohms`,"Red and black and red"},
{{"green","brown","orange"},`51 kiloohms`,"Green and brown and orange"},
{{"yellow","violet","yellow"},`470 kiloohms`,"Yellow and violet and yellow"},
{{"blue","violet","blue"},`67 megaohms`,"Blue and violet and blue"},
{{"black","black","black"},`0 ohms`,"Minimum possible value"},
{{"white","white","white"},`99 gigaohms`,"Maximum possible value"},
{{"black","grey","black"},`8 ohms`,"First two colors make an invalid octal number"},
{{"blue","green","yellow","orange"},`650 kiloohms`,"Ignore extra colors"},
}
--</do not edit>

