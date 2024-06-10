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
{{1,5,10,25},1,{1},"change for 1 cent"},
{{1,5,10,25,100},25,{25},"single coin change"},
{{1,5,10,25,100},15,{5,10},"multiple coin change"},
{{1,4,15,20,50},23,{4,4,15},"change with Lilliputian Coins"},
{{1,5,10,21,25},63,{21,21,21},"change with Lower Elbonia Coins"},
{{1,2,5,10,20,50,100},999,{2,2,5,20,20,50,100,100,100,100,100,100,100,100,100},"large target values"},
{{2,5,10,20,50},21,{2,2,2,5,10},"possible change without unit coins available"},
{{4,5},27,{4,4,4,5,5,5},"another possible change without unit coins available"},
{{1,10,11},20,{10,10},"a greedy approach is not optimal"},
{{1,5,10,21,25},0,{},"no coins make 0 change"},
{{5,10},3,false,"error testing for change smaller than the smallest of coins"},
{{5,10},94,false,"error if no combination can add up to target"},
{{1,2,5},-5,false,"cannot find negative change values"},
}
--</do not edit>

