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
{2,{1},10,{OK,{1}},"single bit one to decimal"},
{2,{1,0,1},10,{OK,{5}},"binary to single decimal"},
{10,{5},2,{OK,{1,0,1}},"single decimal to binary"},
{2,{1,0,1,0,1,0},10,{OK,{4,2}},"binary to multiple decimal"},
{10,{4,2},2,{OK,{1,0,1,0,1,0}},"decimal to binary"},
{3,{1,1,2,0},16,{OK,{2,10}},"trinary to hexadecimal"},
{16,{2,10},3,{OK,{1,1,2,0}},"hexadecimal to trinary"},
{97,{3,46,60},73,{OK,{6,10,45}},"15-bit integer"},
{2,{},10,{OK,{0}},"empty list"},
{10,{0},2,{OK,{0}},"single zero"},
{10,{0,0,0},2,{OK,{0}},"multiple zeros"},
{7,{0,6,0},10,{OK,{4,2}},"leading zeros"},
{1,{0},10,{ERROR,"input base must be >= 2"},"input base is one"},
{0,{},10,{ERROR,"input base must be >= 2"},"input base is zero"},
{-2,{1},10,{ERROR,"input base must be >= 2"},"input base is negative"},
{2,{1,-1,1,0,1,0},10,{ERROR,"all digits must satisfy 0 <= d < input base"},"negative digit"},
{2,{1,2,1,0,1,0},10,{ERROR,"all digits must satisfy 0 <= d < input base"},"invalid positive digit"},
{2,{1,0,1,0,1,0},1,{ERROR,"output base must be >= 2"},"output base is one"},
{10,{7},0,{ERROR,"output base must be >= 2"},"output base is zero"},
{2,{1},-7,{ERROR,"output base must be >= 2"},"output base is negative"},
{-2,{1},-7,{ERROR,"input base must be >= 2"},"both bases are negative"},
}
--</do not edit>

