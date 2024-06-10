-- (No attempts of any kind made for Python,Java,JavaScript, just Go and rewrite here)
--/* -- {{trans|Go}} -- as far as I could go!

constant strong = {"<strong>","</strong>"},
             em = {"<em>","</em>"}

// parse translates markdown to HTML
global function parse(string markdown)
    integer i=1, l = length(markdown),
            strongdx = 1, emdx = 1
    bool newline = true, skipspaces = true, listopen = false
    string html = "", trailer = ""
    while i<=l do
        integer c = markdown[i]
        if newline and c!=' ' then
            if c='*' then
                if not listopen then
                    html &= "<ul>"
                    listopen = true
                end if
                html &= "<li>"
                trailer = "</li>"
                c := ' '
            elsif c='#' then
                assert(not listopen) -- more code rqd??
                integer hlen = 1
                while i+hlen<=l and markdown[i+hlen]='#' do
                    hlen += 1
                end while
                if hlen<7 then
                    i += hlen
                    html &= sprintf("<h%d>",hlen)
                    trailer = sprintf("</h%d>",hlen)
                    c := ' '
                end if
            end if
            -- Aside: Note the two c := ' ' above apply to 
            --     both this and the skipspaces path below
            -- (and latter is a thing in its own right too)
            if c!=' ' then
                if listopen then
                    html &= "</ul>"
                    listopen = false
                end if
                html &= "<p>"
                trailer = "</p>"
            end if
            newline = false
            skipspaces = true
        end if      
        if c='_' then
            if i<l and markdown[i+1]='_' then
                html &= strong[strongdx]
                strongdx = 3-strongdx
                i += 1
            else
                html &= em[emdx]
                emdx = 3-emdx
            end if
            newline = false
            skipspaces = false
        elsif c='\n' then
            assert(strongdx==1)
            assert(emdx==1)
            if length(trailer) then
                html &= trailer
                trailer = ""
            end if
            newline = true
        elsif c!=' ' or not skipspaces then
            html &= c
            newline = false
            skipspaces = false
        end if
        i += 1
    end while
    if length(trailer) then
        html &= trailer
        if listopen then
            html &= "</ul>"
        end if
    end if
    return html
end function

--*/

--/!* -- not {{trans|anything}}, rewritten from scratch:
local function replace_pairs(string line, markup, tag)
    integer k = match(markup,line)
    if k then
        string opentag = sprintf("<%s>",{tag}),
              closetag = sprintf("</%s>",{tag})
        integer lm = length(markup) 
        while k do
            integer l = match(markup,line,k+lm)
            assert(l!=0)
            // nb do close first, before it gets moved
            line[l..l+lm-1] = closetag
            line[k..k+lm-1] = opentag
            k = match(markup,line)
        end while
    end if
    return line
end function

global function parse(string markdown)
    sequence lines = split(markdown, "\n")
    integer ll = length(lines)
    bool listopen = false
    for i, line in lines do
        line = replace_pairs(line,"__","strong")
        line = replace_pairs(line,"_","em")
        if begins("* ",line) then
            string li = iff(listopen?"<li>":"<ul><li>")
            listopen = true
            line = li & line[3..$] & "</li>"
            if (i < ll and not begins("* ",lines[i+1])) or i == ll then
                line &= "</ul>"
                listopen = false
            end if
        else
            string {ho, he} = {"<p>","</p>"}
            integer lenh = 0
            for l,c in line do
                if c!='#' then exit end if
                lenh = l
            end for
            if lenh and lenh<7 then
                ho = sprintf("<h%d>",lenh)
                he = sprintf("</h%d>",lenh)
                assert(line[lenh+1]==' ')
                line = line[lenh+2..$]
            end if
            line = ho & line & he
        end if
        lines[i] = line
    end for
    string html = join(lines,"")
    return html
end function

--*!/

