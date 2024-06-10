# Instructions append

Traditionally, encrypted results have spaces and punctuation removed and are converted to upper/lower case,
however when a test specifies a bPreserve of true neither of those should occur, and when false the result
should only contain the lowercase letters a..z, in which case perfect decryption isn't actually possible,
but rest assured the testing code is smart enough to know that.

