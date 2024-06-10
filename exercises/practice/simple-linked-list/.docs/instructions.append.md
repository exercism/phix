# Instructions append

Phix does not really have pointers, because it doesn't need them. The sequence type should always 
be your first thought when thinking about storing data (graduating to in-memory dictionaries, and
on-disk databases as required), and in fact they are quite likely to outclass more traditionally
taught linked lists in maybe 99% of all cases. They can shrink and grow at will, with no manual 
housekeeping, which not only instantly eliminates the main reason anybody ever still uses linked 
lists but can even eradicate the housekeeping that linked lists themselves normally need.

This trivial exercise has two aims: to introduce sequences and some simple operations on them,
and to extinguish any desire for fiddly pointer-based structures that just don't belong in Phix.

[//]:# (now I've said all that, freelists really are a separate concept...)
[//]:# (this, and linked-list might want to be concepts not exercises...)

