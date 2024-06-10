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
{"1",1,{"1"},"slices of one from one"},
{"12",1,{"1","2"},"slices of one from two"},
{"35",2,{"35"},"slices of two"},
{"9142",2,{"91","14","42"},"slices of two overlap"},
{"777777",3,{"777","777","777","777"},"slices can include duplicates"},
{"918493904243",5,{"91849","18493","84939","49390","93904","39042","90424","04243"},"slices of a long series"},
{"12345",6,"slice length cannot be greater than series length","slice length is too large"},
{"12345",42,"slice length cannot be greater than series length","slice length is way too large"},
{"12345",0,"slice length cannot be zero","slice length cannot be zero"},
{"123",-1,"slice length cannot be negative","slice length cannot be negative"},
{"",1,"series cannot be empty","empty series is invalid"},
}
--</do not edit>

