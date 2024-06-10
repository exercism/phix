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
{"This will be a paragraph","<p>This will be a paragraph</p>","parses normal text as a paragraph"},
{"_This will be italic_","<p><em>This will be italic</em></p>","parsing italics"},
{"__This will be bold__","<p><strong>This will be bold</strong></p>","parsing bold text"},
{"This will _be_ __mixed__","<p>This will <em>be</em> <strong>mixed</strong></p>","mixed normal, italics and bold text"},
{"# This will be an h1","<h1>This will be an h1</h1>","with h1 header level"},
{"## This will be an h2","<h2>This will be an h2</h2>","with h2 header level"},
{"### This will be an h3","<h3>This will be an h3</h3>","with h3 header level"},
{"#### This will be an h4","<h4>This will be an h4</h4>","with h4 header level"},
{"##### This will be an h5","<h5>This will be an h5</h5>","with h5 header level"},
{"###### This will be an h6","<h6>This will be an h6</h6>","with h6 header level"},
{"####### This will not be an h7","<p>####### This will not be an h7</p>","h7 header level is a paragraph"},
{"* Item 1\n* Item 2","<ul><li>Item 1</li><li>Item 2</li></ul>","unordered lists"},
{"# Header!\n* __Bold Item__\n* _Italic Item_","<h1>Header!</h1><ul><li><strong>Bold Item</strong></li><li><em>Italic Item</em></li></ul>","With a little bit of everything"},
{"# This is a header with # and * in the text","<h1>This is a header with # and * in the text</h1>","with markdown symbols in the header text that should not be interpreted"},
{"* Item 1 with a # in the text\n* Item 2 with * in the text","<ul><li>Item 1 with a # in the text</li><li>Item 2 with * in the text</li></ul>","with markdown symbols in the list item text that should not be interpreted"},
{"This is a paragraph with # and * in the text","<p>This is a paragraph with # and * in the text</p>","with markdown symbols in the paragraph text that should not be interpreted"},
{"# Start a list\n* Item 1\n* Item 2\nEnd a list","<h1>Start a list</h1><ul><li>Item 1</li><li>Item 2</li></ul><p>End a list</p>","unordered lists close properly with preceding and following lines"},
}
--</do not edit>

