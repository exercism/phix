# Instructions append

I consider this one of the most difficult exercises on this site: although the final code itself is 
likely to be fairly straightforward, it may well be a challenge to conceptualise what it should do.
It can certainly trigger every possible p2js violation known to mankind, so I'd certainly recommend
solving it first under "without js", and later fixing it under "with js" only if you must. In fact,
the testing harness for this exercise already applies "without js" for you (and there is no way you 
could possibly disable that when running online).

For simplicity every tree/node must obey enum LABEL, CHILDREN, eg {"parent",{{"a",{}}}}, where each
element of CHILDREN also obeys the same rule. The {} is not optional. Not that I can think why, but 
you would be allowed extra elements after those two. Every tree in/from the test data obeys said.

