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
{"""
. . . . .
 . . . . .
  . . . . .
   . . . . .
    . . . . .""","","an empty board has no winner"},
{"""
X""","X","X can win on a 1x1 board"},
{"""
O""","O","O can win on a 1x1 board"},
{"""
O O O X
 X . . X
  X . . X
   X O O O""","","only edges does not make a winner"},
{"""
X O . .
 O X X X
  O X O .
   . O X .
    X X O O""","","illegal diagonal does not make a winner"},
{"""
X . . .
 . X O .
  O . X O
   . O . X
    . . O .""","","nobody wins crossing adjacent angles"},
{"""
. O . .
 O X X X
  O X O .
   X X O X
    . O X .""","X","X wins crossing from left to right"},
{"""
. O . .
 O X X X
  O O O .
   X X O X
    . O X .""","O","O wins crossing from top to bottom"},
{"""
. X X . .
 X . X . X
  . X . X .
   . X X . .
    O O O O O""","X","X wins using a convoluted path"},
{"""
O X X X X X X X X
 O X O O O O O O O
  O X O X X X X X O
   O X O X O O O X O
    O X O X X X O X O
     O X O O O X O X O
      O X X X X X O X O
       O O O O O O O X O
        X X X X X X X X O""","X","X wins using a spiral path"},
}
--</do not edit>

