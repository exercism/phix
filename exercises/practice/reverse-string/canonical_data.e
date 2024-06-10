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
{-1,
 {`exercise`, `reverse-string`},
 {`comments`,
  {-2,
   `If property based testing tools are available, a good property to test is reversing a string twice: reverse(reverse(string)) == string`}},
 {`cases`,
  {-2,
   {-1, {`uuid`, `c3b7d806-dced-49ee-8543-933fd1719b1c`},
    {`description`, `an empty string`}, {`property`, `reverse`},
    {`input`, {-1, {`value`, ``}}}, {`expected`, ``}},
   {-1, {`uuid`, `01ebf55b-bebb-414e-9dec-06f7bb0bee3c`},
    {`description`, `a word`}, {`property`, `reverse`},
    {`input`, {-1, {`value`, `robot`}}}, {`expected`, `tobor`}},
   {-1, {`uuid`, `0f7c07e4-efd1-4aaa-a07a-90b49ce0b746`},
    {`description`, `a capitalized word`}, {`property`, `reverse`},
    {`input`, {-1, {`value`, `Ramen`}}}, {`expected`, `nemaR`}},
   {-1, {`uuid`, `71854b9c-f200-4469-9f5c-1e8e5eff5614`},
    {`description`, `a sentence with punctuation`}, {`property`, `reverse`},
    {`input`, {-1, {`value`, `I'm hungry!`}}}, {`expected`, `!yrgnuh m'I`}},
   {-1, {`uuid`, `1f8ed2f3-56f3-459b-8f3e-6d8d654a1f6c`},
    {`description`, `a palindrome`}, {`property`, `reverse`},
    {`input`, {-1, {`value`, `racecar`}}}, {`expected`, `racecar`}},
   {-1, {`uuid`, `b9e7dec1-c6df-40bd-9fa3-cd7ded010c4c`},
    {`description`, `an even-sized word`}, {`property`, `reverse`},
    {`input`, {-1, {`value`, `drawer`}}}, {`expected`, `reward`}},
   {-1, {`uuid`, `1bed0f8a-13b0-4bd3-9d59-3d0593326fa2`},
    {`description`, `wide characters`}, {`scenarios`, {-2, `unicode`}},
    {`property`, `reverse`},
    {`input`, {-1, {`value`, {229,173,144,231,140,171}}}},
    {`expected`, {231,140,171,229,173,144}}},
   {-1, {`uuid`, `93d7e1b8-f60f-4f3c-9559-4056e10d2ead`},
    {`description`, `grapheme cluster with pre-combined form`},
    {`scenarios`, {-2, `unicode`}}, {`property`, `reverse`},
    {`input`,
     {-1,
      {`value`,
       {87,117,204,136,114,115,116,99,104,101,110,115,116,97,110,100}}}},
    {`expected`,
     {100,110,97,116,115,110,101,104,99,116,115,114,117,204,136,87}}},
   {-1, {`uuid`, `1028b2c1-6763-4459-8540-2da47ca512d9`},
    {`description`, `grapheme clusters`}, {`scenarios`, {-2, `unicode`}},
    {`property`, `reverse`},
    {`input`,
     {-1,
      {`value`,
       {224,184,156,224,184,185,224,185,137,224,185,128,224,184,130,224,184,
        181,224,184,162,224,184,153,224,185,130,224,184,155,224,184,163,224,
        185,129,224,184,129,224,184,163,224,184,161}}}},
    {`expected`,
     {224,184,161,224,184,163,224,184,129,224,185,129,224,184,163,224,184,
      155,224,185,130,224,184,153,224,184,162,224,184,130,224,184,181,224,
      185,128,224,184,156,224,184,185,224,185,137}}}}}}
}
--</do not edit>

