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
{{},
 {},"zero pieces"},
{{"nail"},
 {"And all for the want of a nail."},"one piece"},
{{"nail",
  "shoe"},
 {"For want of a nail the shoe was lost.",
  "And all for the want of a nail."},"two pieces"},
{{"nail",
  "shoe",
  "horse"},
 {"For want of a nail the shoe was lost.",
  "For want of a shoe the horse was lost.",
  "And all for the want of a nail."},"three pieces"},
{{"nail",
  "shoe",
  "horse",
  "rider",
  "message",
  "battle",
  "kingdom"},
 {"For want of a nail the shoe was lost.",
  "For want of a shoe the horse was lost.",
  "For want of a horse the rider was lost.",
  "For want of a rider the message was lost.",
  "For want of a message the battle was lost.",
  "For want of a battle the kingdom was lost.",
  "And all for the want of a nail."},"full proverb"},
{{"pin",
  "gun",
  "soldier",
  "battle"},
 {"For want of a pin the gun was lost.",
  "For want of a gun the soldier was lost.",
  "For want of a soldier the battle was lost.",
  "And all for the want of a pin."},"four pieces modernized"},
}
--</do not edit>

