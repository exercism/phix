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
{{"4S 5S 7H 8D JC"},{"4S 5S 7H 8D JC"},"single hand always wins"},
{{"4D 5S 6S 8D 3C","2S 4C 7S 9H 10H","3S 4S 5D 6H JH"},{"3S 4S 5D 6H JH"},"highest card out of all hands wins"},
{{"4D 5S 6S 8D 3C","2S 4C 7S 9H 10H","3S 4S 5D 6H JH","3H 4H 5C 6C JD"},{"3S 4S 5D 6H JH","3H 4H 5C 6C JD"},"a tie has multiple winners"},
{{"3S 5H 6S 8D 7H","2S 5D 6D 8C 7S"},{"3S 5H 6S 8D 7H"},"multiple hands with the same high cards, tie compares next highest ranked, down to last card"},
{{"2S 5H 6S 8D 7H","3S 4D 6D 8C 7S"},{"2S 5H 6S 8D 7H"},"winning high card hand also has the lowest card"},
{{"4S 5H 6C 8D KH","2S 4H 6S 4D JH"},{"2S 4H 6S 4D JH"},"one pair beats high card"},
{{"4S 2H 6S 2D JH","2S 4H 6C 4D JD"},{"2S 4H 6C 4D JD"},"highest pair wins"},
{{"4H 4S AH JC 3D","4C 4D AS 5D 6C"},{"4H 4S AH JC 3D"},"both hands have the same pair, high card wins"},
{{"2S 8H 6S 8D JH","4S 5H 4C 8C 5C"},{"4S 5H 4C 8C 5C"},"two pairs beats one pair"},
{{"2S 8H 2D 8D 3H","4S 5H 4C 8S 5D"},{"2S 8H 2D 8D 3H"},"both hands have two pairs, highest ranked pair wins"},
{{"2S QS 2C QD JH","JD QH JS 8D QC"},{"JD QH JS 8D QC"},"both hands have two pairs, with the same highest ranked pair, tie goes to low pair"},
{{"JD QH JS 8D QC","JS QS JC 2D QD"},{"JD QH JS 8D QC"},"both hands have two identically ranked pairs, tie goes to remaining card (kicker)"},
{{"6S 6H 3S 3H AS","7H 7S 2H 2S AC"},{"7H 7S 2H 2S AC"},"both hands have two pairs that add to the same value, win goes to highest pair"},
{{"5C 2S 5S 4H 4C","6S 2S 6H 7C 2C"},{"6S 2S 6H 7C 2C"},"two pairs first ranked by largest pair"},
{{"2S 8H 2H 8D JH","4S 5H 4C 8S 4H"},{"4S 5H 4C 8S 4H"},"three of a kind beats two pair"},
{{"2S 2H 2C 8D JH","4S AH AS 8C AD"},{"4S AH AS 8C AD"},"both hands have three of a kind, tie goes to highest ranked triplet"},
{{"5S AH AS 7C AD","4S AH AS 8C AD"},{"4S AH AS 8C AD"},"with multiple decks, two players can have same three of a kind, ties go to highest remaining cards"},
{{"4S 5H 4C 8D 4H","3S 4D 2S 6D 5C"},{"3S 4D 2S 6D 5C"},"a straight beats three of a kind"},
{{"4S 5H 4C 8D 4H","10D JH QS KD AC"},{"10D JH QS KD AC"},"aces can end a straight (10 J Q K A)"},
{{"4S 5H 4C 8D 4H","4D AH 3S 2D 5C"},{"4D AH 3S 2D 5C"},"aces can start a straight (A 2 3 4 5)"},
{{"2C 3D 7H 5H 2S","QS KH AC 2D 3S"},{"2C 3D 7H 5H 2S"},"aces cannot be in the middle of a straight (Q K A 2 3)"},
{{"4S 6C 7S 8D 5H","5S 7H 8S 9D 6H"},{"5S 7H 8S 9D 6H"},"both hands with a straight, tie goes to highest ranked card"},
{{"2H 3C 4D 5D 6H","4S AH 3S 2D 5H"},{"2H 3C 4D 5D 6H"},"even though an ace is usually high, a 5-high straight is the lowest-scoring straight"},
{{"4C 6H 7D 8D 5H","2S 4S 5S 6S 7S"},{"2S 4S 5S 6S 7S"},"flush beats a straight"},
{{"2H 7H 8H 9H 6H","3S 5S 6S 7S 8S"},{"2H 7H 8H 9H 6H"},"both hands have a flush, tie goes to high card, down to the last one if necessary"},
{{"3H 6H 7H 8H 5H","4S 5H 4C 5D 4H"},{"4S 5H 4C 5D 4H"},"full house beats a flush"},
{{"4H 4S 4D 9S 9D","5H 5S 5D 8S 8D"},{"5H 5S 5D 8S 8D"},"both hands have a full house, tie goes to highest-ranked triplet"},
{{"5H 5S 5D 9S 9D","5H 5S 5D 8S 8D"},{"5H 5S 5D 9S 9D"},"with multiple decks, both hands have a full house with the same triplet, tie goes to the pair"},
{{"4S 5H 4D 5D 4H","3S 3H 2S 3D 3C"},{"3S 3H 2S 3D 3C"},"four of a kind beats a full house"},
{{"2S 2H 2C 8D 2D","4S 5H 5S 5D 5C"},{"4S 5H 5S 5D 5C"},"both hands have four of a kind, tie goes to high quad"},
{{"3S 3H 2S 3D 3C","3S 3H 4S 3D 3C"},{"3S 3H 4S 3D 3C"},"with multiple decks, both hands with identical four of a kind, tie determined by kicker"},
{{"4S 5H 5S 5D 5C","7S 8S 9S 6S 10S"},{"7S 8S 9S 6S 10S"},"straight flush beats four of a kind"},
{{"KC AH AS AD AC","10C JC QC KC AC"},{"10C JC QC KC AC"},"aces can end a straight flush (10 J Q K A)"},
{{"KS AH AS AD AC","4H AH 3H 2H 5H"},{"4H AH 3H 2H 5H"},"aces can start a straight flush (A 2 3 4 5)"},
{{"2C AC QC 10C KC","QH KH AH 2H 3H"},{"2C AC QC 10C KC"},"aces cannot be in the middle of a straight flush (Q K A 2 3)"},
{{"4H 6H 7H 8H 5H","5S 7S 8S 9S 6S"},{"5S 7S 8S 9S 6S"},"both hands have a straight flush, tie goes to highest-ranked card"},
{{"2H 3H 4H 5H 6H","4D AD 3D 2D 5D"},{"2H 3H 4H 5H 6H"},"even though an ace is usually high, a 5-high straight flush is the lowest-scoring straight flush"},
}
--</do not edit>

