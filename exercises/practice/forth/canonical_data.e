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
{{"1 2 3 4 5"},{1,2,3,4,5},"","numbers just get pushed onto the stack"},
{{"-1 -2 -3 -4 -5"},{-1,-2,-3,-4,-5},"","pushes negative numbers onto the stack"},
{{"1 2 +"},{3},"","can add two numbers"},
{{"+"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 +"},{},"only one value on the stack","errors if there is only one value on the stack"},
{{"3 4 -"},{-1},"","can subtract two numbers"},
{{"-"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 -"},{},"only one value on the stack","errors if there is only one value on the stack"},
{{"2 4 *"},{8},"","can multiply two numbers"},
{{"*"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 *"},{},"only one value on the stack","errors if there is only one value on the stack"},
{{"12 3 /"},{4},"","can divide two numbers"},
{{"8 3 /"},{2},"","performs integer division"},
{{"4 0 /"},{},"divide by zero","errors if dividing by zero"},
{{"/"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 /"},{},"only one value on the stack","errors if there is only one value on the stack"},
{{"1 2 + 4 -"},{-1},"","addition and subtraction"},
{{"2 4 * 3 /"},{2},"","multiplication and division"},
{{"1 dup"},{1,1},"","copies a value on the stack"},
{{"1 2 dup"},{1,2,2},"","copies the top value on the stack"},
{{"dup"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 drop"},{},"","removes the top value on the stack if it is the only one"},
{{"1 2 drop"},{1},"","removes the top value on the stack if it is not the only one"},
{{"drop"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 2 swap"},{2,1},"","swaps the top two values on the stack if they are the only ones"},
{{"1 2 3 swap"},{1,3,2},"","swaps the top two values on the stack if they are not the only ones"},
{{"swap"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 swap"},{},"only one value on the stack","errors if there is only one value on the stack"},
{{"1 2 over"},{1,2,1},"","copies the second element if there are only two"},
{{"1 2 3 over"},{1,2,3,2},"","copies the second element if there are more than two"},
{{"over"},{},"empty stack","errors if there is nothing on the stack"},
{{"1 over"},{},"only one value on the stack","errors if there is only one value on the stack"},
{{": dup-twice dup dup ;","1 dup-twice"},{1,1,1},"","can consist of built-in words"},
{{": countup 1 2 3 ;","countup"},{1,2,3},"","execute in the right order"},
{{": foo dup ;",": foo dup dup ;","1 foo"},{1,1,1},"","can override other user-defined words"},
{{": swap dup ;","1 swap"},{1,1},"","can override built-in words"},
{{": + * ;","3 4 +"},{12},"","can override built-in operators"},
{{": foo 5 ;",": bar foo ;",": foo 6 ;","bar foo"},{5,6},"","can use different words with the same name"},
{{": foo 10 ;",": foo foo 1 + ;","foo"},{11},"","can define word that uses word with the same name"},
{{": 1 2 ;"},{},"illegal operation","cannot redefine non-negative numbers"},
{{": -1 2 ;"},{},"illegal operation","cannot redefine negative numbers"},
{{"foo"},{},"undefined operation","errors if executing a non-existent word"},
{{": + - ;","1 1 +"},{0},"","only defines locally"},
{{"1 1 +"},{2},"","only defines locally"},
{{"1 DUP Dup dup"},{1,1,1,1},"","DUP is case-insensitive"},
{{"1 2 3 4 DROP Drop drop"},{1},"","DROP is case-insensitive"},
{{"1 2 SWAP 3 Swap 4 swap"},{2,3,4,1},"","SWAP is case-insensitive"},
{{"1 2 OVER Over over"},{1,2,1,2,1},"","OVER is case-insensitive"},
{{": foo dup ;","1 FOO Foo foo"},{1,1,1,1},"","user-defined words are case-insensitive"},
{{": SWAP DUP Dup dup ;","1 swap"},{1,1,1,1},"","definitions are case-insensitive"},
}
--</do not edit>

