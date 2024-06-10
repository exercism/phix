include timedate.e

global function format_ledger(string currency, locale, sequence entries)
    integer cdx = find(currency,{"USD","EUR"}),
            ldx = find(locale,{"en_US","nl_NL"})
    sequence ddcf = {{`Date`,`Description`,`Change`,`MM/DD/YYYY`,`.,`,``},
                     {`Datum`,`Omschrijving`,`Verandering`,`DD-MM-YYYY`,`,.`,` `}}[ldx]
    currency = {"$","€"}[cdx] & ddcf[6]
    sequence res = {sprintf(`%-10s | %-25s | %-13s`,ddcf)}, nent = {}
    for i,e in entries do
        nent &= {{parse_date_string(e[1],{"YYYY-MM-DD"}),e[2],e[3]}}
    end for
    nent = sort(nent)
    for e in nent do
        integer amt = e[3], pence = remainder(abs(amt),100)
        bool negative = amt<0 and ddcf[6]=``
        if negative then amt = -amt end if
        string dt = format_timedate(e[1],ddcf[4]),
             desc = e[2],
             amts = sprintf("%,d",trunc(amt/100))
        if length(desc)>25 then desc[23..$] = "..." end if
        if ddcf[5]=",." then
            amts = substitute(amts,',','.')&sprintf(",%02d",pence)
        else
            amts &= sprintf(".%02d",pence)
        end if
        if negative then
            amts = sprintf("(%s%s)",{currency,amts})
        else
            amts = sprintf(" %s%s ",{currency,amts})
        end if
        string line = sprintf("%-10s | %-25s | %13s", {dt,desc,amts})
        res = append(res,line)
    end for
    return res
end function

