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
{-1,
 {`exercise`, `high-scores`},
 {`comments`,
  {-2,
   `Consider adding a track specific recommendation in the track's hint.md.`,
   `Consider linking to a explanatory blogpost or beginner level tutorials for both topics.`,
   `See Ruby Track hint.md for an example.`}},
 {`cases`,
  {-2,
   {-1, {`uuid`, `1035eb93-2208-4c22-bab8-fef06769a73c`},
    {`description`, `List of scores`}, {`property`, `scores`},
    {`input`, {-1, {`scores`, {-2,30,50,20,70}}}},
    {`expected`, {-2,30,50,20,70}}},
   {-1, {`uuid`, `6aa5dbf5-78fa-4375-b22c-ffaa989732d2`},
    {`description`, `Latest score`}, {`property`, `latest`},
    {`input`, {-1, {`scores`, {-2,100,0,90,30}}}}, {`expected`, 30}},
   {-1, {`uuid`, `b661a2e1-aebf-4f50-9139-0fb817dd12c6`},
    {`description`, `Personal best`}, {`property`, `personalBest`},
    {`input`, {-1, {`scores`, {-2,40,100,70}}}}, {`expected`, 100}},
   {-1, {`description`, `Top 3 scores`},
    {`cases`,
     {-2,
      {-1, {`uuid`, `3d996a97-c81c-4642-9afc-80b80dc14015`},
       {`description`, `Personal top three from a list of scores`},
       {`property`, `personalTopThree`},
       {`input`,
        {-1, {`scores`, {-2,10,30,90,30,100,20,10,0,30,40,40,70,70}}}},
       {`expected`, {-2,100,90,70}}},
      {-1, {`uuid`, `1084ecb5-3eb4-46fe-a816-e40331a4e83a`},
       {`description`, `Personal top highest to lowest`},
       {`property`, `personalTopThree`},
       {`input`, {-1, {`scores`, {-2,20,10,30}}}},
       {`expected`, {-2,30,20,10}}},
      {-1, {`uuid`, `e6465b6b-5a11-4936-bfe3-35241c4f4f16`},
       {`description`, `Personal top when there is a tie`},
       {`property`, `personalTopThree`},
       {`input`, {-1, {`scores`, {-2,40,20,40,30}}}},
       {`expected`, {-2,40,40,30}}},
      {-1, {`uuid`, `f73b02af-c8fd-41c9-91b9-c86eaa86bce2`},
       {`description`, `Personal top when there are less than 3`},
       {`property`, `personalTopThree`},
       {`input`, {-1, {`scores`, {-2,30,70}}}}, {`expected`, {-2,70,30}}},
      {-1, {`uuid`, `16608eae-f60f-4a88-800e-aabce5df2865`},
       {`description`, `Personal top when there is only one`},
       {`property`, `personalTopThree`},
       {`input`, {-1, {`scores`, {-2,40}}}}, {`expected`, {-2,40}}},
      {-1, {`uuid`, `2df075f9-fec9-4756-8f40-98c52a11504f`},
       {`description`, `Latest score after personal top scores`},
       {`scenarios`, {-2, `immutable`}},
       {`property`, `latestAfterTopThree`},
       {`input`, {-1, {`scores`, {-2,70,50,20,30}}}}, {`expected`, 30}},
      {-1, {`uuid`, `809c4058-7eb1-4206-b01e-79238b9b71bc`},
       {`description`, `Scores after personal top scores`},
       {`scenarios`, {-2, `immutable`}},
       {`property`, `scoresAfterTopThree`},
       {`input`, {-1, {`scores`, {-2,30,50,20,70}}}},
       {`expected`, {-2,30,50,20,70}}},
      {-1, {`uuid`, `ddb0efc0-9a86-4f82-bc30-21ae0bdc6418`},
       {`description`, `Latest score after personal best`},
       {`scenarios`, {-2, `immutable`}}, {`property`, `latestAfterBest`},
       {`input`, {-1, {`scores`, {-2,20,70,15,25,30}}}}, {`expected`, 30}},
      {-1, {`uuid`, `6a0fd2d1-4cc4-46b9-a5bb-2fb667ca2364`},
       {`description`, `Scores after personal best`},
       {`scenarios`, {-2, `immutable`}}, {`property`, `scoresAfterBest`},
       {`input`, {-1, {`scores`, {-2,20,70,15,25,30}}}},
       {`expected`, {-2,20,70,15,25,30}}}}}}}}}
}
--</do not edit>

