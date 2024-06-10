# Instructions append

This exercise is all about making some relatively simple code thread safe.

The account type must be completely thread safe, in Phix that pretty much means it must be an integer,
which is used to index some private "ledger" (which can store account balances and closed flags) and any and all 
access to that ledger must be properly protected by the use of a critical section (also private).

Note that thread safety of data is a major concern when using multithreading in Phix. Apart from integers the
only thread safe data is that strictly limited to use by a single thread, everything else must only be accessed
when suitably locked - and that even includes strings and atoms. In particular here, attempting to use a struct
for an account would be spectacularly inappropriate, since the reference counts would likely be corrupted every
time it was passed to a different thread, or when that thread exited, hence something different must be found.
Once you sort out the data, especially any implicit refcounts including those on any parameters, multithreading
is quite straightforward in Phix, ignore the data/refounts and you are in a world of pain. Be sure you fully
appreciate the point made in example 3 of [thread_safe_string][thread_safe_string] in the docs.

The first set of tests should pass fairly easily, but the concurrency tests may produce confusing and/or
garbled messages and they may be different every time. The tests make no attempt to avoid overlapping their
displays, as should be expected to likely occur in any similar real-world multithreading tests that fail.

[thread_safe_string]:(http://phix.x10.mx/docs/html/thread_safe_string.htm)
