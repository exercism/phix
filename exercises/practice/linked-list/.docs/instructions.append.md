# Instructions append

Phix does not have pointers, and implementing something like a linked list which is slightly tricky 
to begin with, perhaps by emulating pointers with indexes, would not only be even trickier but also
utterly pointless, given that a standard sequence, the very backbone of the language, deals with 
such things in a much easier and almost trivial way. Hence this exercise is a very simple one, to
emulate the behaviour of a double-linked(/ended) list using a single (flat) sequence, without any
pointers or similar of any kind. While multiple lists could be handled using multiple returns, or
the provided stack/queue include could be used (both can be instructed to perform an operation on
their "other" end), to further simplify matters we'll just use the single static variable "list".

[//]:# (this should require simple-linked-list to be completed first...)
