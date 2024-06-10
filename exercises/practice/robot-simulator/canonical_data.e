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
{{0,0,"north"},"",{0,0,"north"},"at origin facing north"},
{{-1,-1,"south"},"",{-1,-1,"south"},"at negative position facing south"},
{{0,0,"north"},"R",{0,0,"east"},"changes north to east"},
{{0,0,"east"},"R",{0,0,"south"},"changes east to south"},
{{0,0,"south"},"R",{0,0,"west"},"changes south to west"},
{{0,0,"west"},"R",{0,0,"north"},"changes west to north"},
{{0,0,"north"},"L",{0,0,"west"},"changes north to west"},
{{0,0,"west"},"L",{0,0,"south"},"changes west to south"},
{{0,0,"south"},"L",{0,0,"east"},"changes south to east"},
{{0,0,"east"},"L",{0,0,"north"},"changes east to north"},
{{0,0,"north"},"A",{0,1,"north"},"facing north increments Y"},
{{0,0,"south"},"A",{0,-1,"south"},"facing south decrements Y"},
{{0,0,"east"},"A",{1,0,"east"},"facing east increments X"},
{{0,0,"west"},"A",{-1,0,"west"},"facing west decrements X"},
{{7,3,"north"},"RAALAL",{9,4,"west"},"moving east and north from README"},
{{0,0,"north"},"LAAARALA",{-4,1,"west"},"moving west and north"},
{{2,-7,"east"},"RRAAAAALA",{-3,-8,"south"},"moving west and south"},
{{8,4,"south"},"LAAARRRALLLL",{11,5,"north"},"moving east and north"},
}
--</do not edit>

