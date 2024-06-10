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
{"","","empty plaintext results in an empty ciphertext"},
{"... --- ...","","normalization results in empty plaintext"},
{"A","a","Lowercase"},
{"  b ","b","Remove spaces"},
{"@1,%!","1","Remove punctuation"},
{"This is fun!","tsf hiu isn","9 character plaintext results in 3 chunks of 3 characters"},
{"Chill out.","clu hlt io ","8 character plaintext results in 3 chunks, the last one with a trailing space"},
{"If man was meant to stay on the ground, god would have given us roots.","imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau ","54 character plaintext results in 7 chunks, the last two with trailing spaces"},
}
--</do not edit>

