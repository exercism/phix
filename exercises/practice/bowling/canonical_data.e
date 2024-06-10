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
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},0,"should be able to score a game with all zeros"},
{{3,6,3,6,3,6,3,6,3,6,3,6,3,6,3,6,3,6,3,6},90,"should be able to score a game with no strikes or spares"},
{{6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},10,"a spare followed by zeros is worth ten points"},
{{6,4,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},16,"points scored in the roll after a spare are counted twice"},
{{5,5,3,7,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},31,"consecutive spares each get a one roll bonus"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,3,7},17,"a spare in the last frame gets a one roll bonus that is counted once"},
{{10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},10,"a strike earns ten points in a frame with a single roll"},
{{10,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},26,"points scored in the two rolls after a strike are counted twice as a bonus"},
{{10,10,10,5,3,0,0,0,0,0,0,0,0,0,0,0,0},81,"consecutive strikes each get the two roll bonus"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,7,1},18,"a strike in the last frame gets a two roll bonus that is counted once"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,7,3},20,"rolling a spare with the two roll bonus does not get a bonus roll"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10},30,"strikes with the two roll bonus do not get bonus rolls"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,0,1},31,"last two strikes followed by only last bonus with non strike points"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,3,10},20,"a strike with the one roll bonus after a spare in the last frame does not get a bonus"},
{{10,10,10,10,10,10,10,10,10,10,10,10},300,"all strikes is a perfect game"},
{{},{-1,{"error","Negative roll is invalid"}},"rolls cannot score negative points"},
{{},{-1,{"error","Pin count exceeds pins on the lane"}},"a roll cannot score more than 10 points"},
{{5},{-1,{"error","Pin count exceeds pins on the lane"}},"two rolls in a frame cannot score more than 10 points"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10},{-1,{"error","Pin count exceeds pins on the lane"}},"bonus roll after a strike in the last frame cannot score more than 10 points"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,5},{-1,{"error","Pin count exceeds pins on the lane"}},"two bonus rolls after a strike in the last frame cannot score more than 10 points"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,6},26,"two bonus rolls after a strike in the last frame can score more than 10 points if one is a strike"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,6},{-1,{"error","Pin count exceeds pins on the lane"}},"the second bonus rolls after a strike in the last frame cannot be a strike if the first one is not a strike"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10},{-1,{"error","Pin count exceeds pins on the lane"}},"second bonus roll after a strike in the last frame cannot score more than 10 points"},
{{},{-1,{"error","Score cannot be taken until the end of the game"}},"an unstarted game cannot be scored"},
{{0,0},{-1,{"error","Score cannot be taken until the end of the game"}},"an incomplete game cannot be scored"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{-1,{"error","Cannot roll after game is over"}},"cannot roll if game already has ten frames"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10},{-1,{"error","Score cannot be taken until the end of the game"}},"bonus rolls for a strike in the last frame must be rolled before score can be calculated"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10},{-1,{"error","Score cannot be taken until the end of the game"}},"both bonus rolls for a strike in the last frame must be rolled before score can be calculated"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,3},{-1,{"error","Score cannot be taken until the end of the game"}},"bonus roll for a spare in the last frame must be rolled before score can be calculated"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,3,2},{-1,{"error","Cannot roll after game is over"}},"cannot roll after bonus roll for spare"},
{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,3,2},{-1,{"error","Cannot roll after game is over"}},"cannot roll after bonus rolls for strike"},
}
--</do not edit>

