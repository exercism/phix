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
{"What is 5?",5,"just a number"},
{"What is 1 plus 1?",2,"addition"},
{"What is 53 plus 2?",55,"more addition"},
{"What is -1 plus -10?",-11,"addition with negative numbers"},
{"What is 123 plus 45678?",45801,"large addition"},
{"What is 4 minus -12?",16,"subtraction"},
{"What is -3 multiplied by 25?",-75,"multiplication"},
{"What is 33 divided by -3?",-11,"division"},
{"What is 1 plus 1 plus 1?",3,"multiple additions"},
{"What is 1 plus 5 minus -2?",8,"addition and subtraction"},
{"What is 20 minus 4 minus 13?",3,"multiple subtraction"},
{"What is 17 minus 6 plus 3?",14,"subtraction then addition"},
{"What is 2 multiplied by -2 multiplied by 3?",-12,"multiple multiplication"},
{"What is -3 plus 7 multiplied by -2?",-8,"addition and multiplication"},
{"What is -12 divided by 2 divided by -3?",2,"multiple division"},
{"What is 52 cubed?","unknown operation","unknown operation"},
{"Who is the President of the United States?","unknown operation","Non math question"},
{"What is 1 plus?","syntax error","reject problem missing an operand"},
{"What is?","syntax error","reject problem with no operands or operators"},
{"What is 1 plus plus 2?","syntax error","reject two operations in a row"},
{"What is 1 plus 2 1?","syntax error","reject two numbers in a row"},
{"What is 1 2 plus?","syntax error","reject postfix notation"},
{"What is plus 1 2?","syntax error","reject prefix notation"},
}
--</do not edit>

