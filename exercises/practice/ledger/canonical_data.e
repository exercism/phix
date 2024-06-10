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
{"USD","en_US",
 {},
 {`Date       | Description               | Change       `},"empty ledger"},
{"USD","en_US",
 {{"2015-01-01","Buy present",-1000}},
 {`Date       | Description               | Change       `,
  `01/01/2015 | Buy present               |      ($10.00)`},"one entry"},
{"USD","en_US",
 {{"2015-01-02","Get present",1000},
  {"2015-01-01","Buy present",-1000}},
 {`Date       | Description               | Change       `,
  `01/01/2015 | Buy present               |      ($10.00)`,
  `01/02/2015 | Get present               |       $10.00 `},"credit and debit"},
{"USD","en_US",
 {{"2015-01-01","Something",0},
  {"2015-01-01","Something",-1},
  {"2015-01-01","Something",1}},
 {`Date       | Description               | Change       `,
  `01/01/2015 | Something                 |       ($0.01)`,
  `01/01/2015 | Something                 |        $0.00 `,
  `01/01/2015 | Something                 |        $0.01 `},"final order tie breaker is change"},
{"USD","en_US",
 {{"2015-01-01","Freude schoner Gotterfunken",-123456}},
 {`Date       | Description               | Change       `,
  `01/01/2015 | Freude schoner Gotterf... |   ($1,234.56)`},"overlong description is truncated"},
{"EUR","en_US",
 {{"2015-01-01","Buy present",-1000}},
 {`Date       | Description               | Change       `,
  `01/01/2015 | Buy present               |      (€10.00)`},"euros"},
{"USD","nl_NL",
 {{"2015-03-12","Buy present",123456}},
 {`Datum      | Omschrijving              | Verandering  `,
  `12-03-2015 | Buy present               |   $ 1.234,56 `},"Dutch locale"},
{"EUR","nl_NL",
 {{"2015-03-12","Buy present",123456}},
 {`Datum      | Omschrijving              | Verandering  `,
  `12-03-2015 | Buy present               |   € 1.234,56 `},"Dutch locale and euros"},
{"USD","nl_NL",
 {{"2015-03-12","Buy present",-12345}},
 {`Datum      | Omschrijving              | Verandering  `,
  `12-03-2015 | Buy present               |    $ -123,45 `},"Dutch negative number with 3 digits before decimal point"},
{"USD","en_US",
 {{"2015-03-12","Buy present",-12345}},
 {`Date       | Description               | Change       `,
  `03/12/2015 | Buy present               |     ($123.45)`},"American negative number with 3 digits before decimal point"},
{"USD","en_US",
 {{"2015-01-01","Get present",1000},
  {"2015-01-01","Buy present",-1000}},
 {`Date       | Description               | Change       `,
  `01/01/2015 | Buy present               |      ($10.00)`,
  `01/01/2015 | Get present               |       $10.00 `},"multiple entries on same date ordered by description"},
}
--</do not edit>

