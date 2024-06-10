# Numbers in Phix

There are two data types in Phix to hold numbers, integer and atom.
Integers are signed and one bit smaller than the machine word, and hence (spoiler alert) inadequate for this task even on 64-bit.
Atoms can hold higher precision integers, sufficient at least on 64-bit, which you are certainly using when running online at the
exercism.org site, and probably in the CLI, as long as that's what you installed - just run 'p' in a terminal console and it will 
show you.

## 32-bit machines

However, even atoms on 32-bit are still insufficiently accurate/large enough to complete this exercise. To get round that you 
may instead return a string, which must/can be exact, without any commas or underscores, but are not obliged to so so on 64-bit. 
You may construct such strings manually or use an arbitrary precision library such as [mpfr][mpfr].

... /testme:
, (**) and to get that working 
on the exercism platform itself you would need to invoke mpir_open_dll("./lib/",true) to load it properly (**TODO**).
(** AH: If I simply [find and] put it in the right place in the docker setup, that all vanishes... rzuckerm[?] may already...)

A 32-bit version of Phix remains vital for adequate testing on desktop/Phix prior to using p2js, since JavaScript is inherently 
32-bit (or perhaps more precisely 53-bit) even in a 64-bit browser running on a 64-bit machine.

The precise limits of what can be held in Phix integers and atoms is of course futher detailed in the [manual][manual].

[mpfr]: http://phix.x10.mx/docs/html/mpfr.htm
[manual]: http://phix.x10.mx/docs/html/atoms.htm

