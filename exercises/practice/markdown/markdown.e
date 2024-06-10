--
-- You have no less than five choices here, I have translated the Python, Go, Java and JavaScript versions to Phix,
-- trying hard not to make any of them any prettier. Refactor any one of these or even all of them - in which case
-- you will have to test them one at a time, by un-commenting and (re-)commenting out the others, as per first one.
-- Please keep the {{trans}} markers, but should you manage to make any two identical, you can merge them.
-- When seeking mentoring, please ensure your latest submission only contains just the one you need help with.
-- TIP: the exemplar code doesn't use regex anywhere at all (it's a band-aid/complete overkill for this, and
--                                                           as per docs gsub/gmatch are still draft status).
--

--/!* {{trans|Python}}

include builtins\regex.e

global function parse(string markdown)
    sequence lines = split(markdown, "\n")
    string res = "", curr
    bool in_list = False
    bool in_list_append = False
    bool is_bold
    bool is_italic
    sequence m1
    for i in lines do
        if regex("^###### (.*)", i)!={} then
            i = "<h6>" & i[8..$] & "</h6>"
        elsif regex("^##### (.*)", i)!={} then
            i = "<h5>" & i[7..$] & "</h5>"
        elsif regex("^#### (.*)", i)!={} then
            i = "<h4>" & i[6..$] & "</h4>"
        elsif regex("^### (.*)", i)!={} then
            i = "<h3>" & i[5..$] & "</h3>"
        elsif regex("^## (.*)", i)!={} then
            i = "<h2>" & i[4..$] & "</h2>"
        elsif regex("^# (.*)", i)!={} then
            i = "<h1>" & i[3..$] & "</h1>"
        end if
        sequence m = regex(`^[*] (.*)`, i)
        if m!={} then
            if not in_list then
                in_list = True
                is_bold = False
                is_italic = False
                curr = i[m[3]..m[4]]
                m1 = regex("(.*)__(.*)__(.*)", curr)
                if m1!={} then
                    curr = curr[m1[3]..m1[4]] & "<strong>" &
                           curr[m1[5]..m1[6]] & "</strong>" & curr[m1[7]..m1[8]]
                    is_bold = True
                end if
                m1 = regex("(.*)_(.*)_(.*)", curr)
                if m1!={} then
                    curr = curr[m1[3]..m1[4]] & "<em>" & curr[m1[5]..m1[6]]
                    & "</em>" & curr[m1[7]..m1[8]]
                    is_italic = True
                end if
                i = "<ul><li>" & curr & "</li>"
            else
                is_bold = False
                is_italic = False
                curr = i[m[3]..m[4]]
                m1 = regex("(.*)__(.*)__(.*)", curr)
                if m1!={} then
                    is_bold = True
                end if
                m1 = regex("(.*)_(.*)_(.*)", curr)
                if m1!={} then
                    is_italic = True
                end if
                if is_bold then
                    curr = curr[m1[3]..m1[4]] & "<strong>" &
                           curr[m1[5]..m1[6]] & "</string>" & curr[m1[7]..m1[8]]
                    ?9/0
                end if
                if is_italic then
                    curr = curr[m1[3]..m1[4]] & "<em>" & curr[m1[5]..m1[6]] & 
                        "</em>" & curr[m1[7]..m1[8]]
                end if
                i = "<li>" & curr & "</li>"
            end if
        else
            if in_list then
                in_list_append = True
                in_list = False
            end if
        end if
        m = regex("<h|<ul|<p|<li", i)
        if m={} then
            i = "<p>" & i & "</p>"
        end if
        m = regex("(.*)__(.*)__(.*)", i)
        if m!={} then
            i = i[m[3]..m[4]] & "<strong>" & i[m[5]..m[6]] & "</strong>" & i[m[7]..m[8]]
        end if
        m = regex("(.*)_(.*)_(.*)", i)
        if m!={} then
            i = i[m[3]..m[4]] & "<em>" & i[m[5]..m[6]] & "</em>" & i[m[7]..m[8]]
        end if
        if in_list_append then
            i = "</ul>" & i
            in_list_append = False
        end if
        res &= i
    end for
    if in_list then
        res &= "</ul>"
    end if
    return res
end function

--*!/

--/* {{trans|Go}}

// parse translates markdown to HTML
global function parse(string markdown)
    integer header := 0
    markdown = substitute(markdown, "__", "<strong>", 1)
    markdown = substitute(markdown, "__", "</strong>", 1)
    markdown = substitute(markdown, "_", "<em>", 1)
    markdown = substitute(markdown, "_", "</em>", 1)
    integer pos := 1,
            list := 0,
            listOpened := false,
            he := false
    string html := ""
    do
        integer char := markdown[pos]
        if char == '#' then
            while char == '#' do
                header += 1
                pos+=1
                char = markdown[pos]
            end while
            if header == 7 then
                html &= sprintf("<p>%s ", repeat('#', header))
            elsif he then
                html &= "# "
                header-=1
            else
                html &= sprintf("<h%d>", header)
            end if
            pos+=+1
            continue
        end if
        he = true
        if char == '*' and header == 0 and match("\n", markdown) then
            if list == 0 then
                html &= "<ul>"
            end if
            list+=+1
            if not listOpened then
                html &= "<li>"
                listOpened = true
            else
                html &= char & " "
            end if
            pos += 2
            continue
        end if
        if char == '\n' then
            if listOpened and rmatch("\n", markdown) == pos and rmatch("\n", markdown) > rmatch("*", markdown) then
                html &= "</li></ul><p>"
                listOpened = false
                list = 0
            end if
            if list > 0 and listOpened then
                html &= "</li>"
                listOpened = false
            end if
            if header > 0 then
                html &= sprintf("</h%d>", header)
                header = 0
            end if
            pos += 1
            continue
        end if
        html &= char
        pos += 1 
        if pos > length(markdown) then
            exit
        end if
    until false
    if header == 7 then
        return html & "</p>"
    end if
    if header > 0 then
        return html & sprintf("</h%d>", header)
    end if
    if list > 0 then
        return html & "</li></ul>"
    end if
    if match("<p>", html) then
        return html & "</p>"
    end if
    return "<p>" & html & "</p>"
end function

--*/

--/* {{trans|Java}}

function parseHeader(string markdown)
    int count = 0;

    for i=1 to length(markdown) do
        if markdown[i] != '#' then exit end if
        count+=+1;
    end for
    
    if (count > 6) then return "<p>" & markdown & "</p>"; end if
    if (count == 0) then return null; end if
    return "<h" & to_string(count) & ">" & markdown[count + 2..$] & "</h" & to_string(count)& ">";
end function

include builtins\regex.e

function parseSomeSymbols(string markdown)

    string lookingFor = "(.*)__(.+)__(.*)";
    string update = `\1<strong>\2</strong>\3`;
    object workingOn = gmatch(lookingFor,markdown,update);
    if workingOn=-1 then workingOn = markdown end if

    lookingFor = "(.*)_(.+)_(.*)";
    update = `\1<em>\2</em>\3`;
    object workingOn2 = gmatch(lookingFor, workingOn, update);
    if workingOn2=-1 then workingOn2 = workingOn end if
    return workingOn2
end function

function parseListItem(string markdown)
    if begins("*",markdown) then
        string skipAsterisk = markdown[3..$];
        string listItemString = parseSomeSymbols(skipAsterisk);
        return "<li>" & listItemString & "</li>";
    end if

    return null;
end function

function parseParagraph(string markdown)
    return "<p>" & parseSomeSymbols(markdown) & "</p>";
end function

global function parse(string markdown)
    sequence lines = split(markdown, "\n")
    string result = "";
    bool activeList = false;

    for i=1 to length(lines) do

        object theLine = parseHeader(lines[i]);

        if (theLine == null) then
          theLine = parseListItem(lines[i]);
        end if

        if (theLine == null)
        then
            theLine = parseParagraph(lines[i]);
        end if

        if regex("(<li>).*",theLine)!={} and regex("(<h).*",theLine)={} and regex("(<p>).*",theLine)={} and not activeList then
            activeList = true;
          result = result & "<ul>";
            result = result & theLine;

        elsif regex("(<li>).*",theLine)={} and activeList then
            activeList = false;
            result = result & "</ul>";
            result = result & theLine;
        else
          result = result & theLine;
        end if
    end for

    if (activeList) then
        result = result & "</ul>";
    end if

    return result;
end function

--*/

--/* {{trans|JavaScript}}

include builtins\regex.e

function wrap(string text, tag)
  return sprintf(`<%s>%s</%s>`,{tag,text,tag});
end function

function isTag(string text, tag)
  return begins(sprintf(`<%s>`,{tag}),text);
end function

function parser(string markdown, delimiter, tag)
  if length(match_all(delimiter,markdown))>=2 then  
    markdown = substitute(markdown, delimiter, sprintf("<%s>",{tag}),1)
    markdown = substitute(markdown, delimiter, sprintf(`</%s>`,{tag}),1)
  end if
  return markdown   
end function

function parse__(string markdown)
  return parser(markdown, "__", "strong");
end function

function parse_(string markdown)
  return parser(markdown, "_", "em");
end function

function parseText(string markdown, bool list)
  string parsedText = parse_(parse__(markdown));
  if (list) then
    return parsedText;
  else
    return wrap(parsedText, "p");
  end if
end function

function parseHeader(string markdown, bool list)
  integer count = 0;
  for i=1 to length(markdown) do
    if (markdown[i] == '#')then
      count += 1;
    else
      exit;
    end if
  end for
  if (count == 0 or count > 6) then
    return {null, list};
  end if
  string headerTag = sprintf("h%d",count);
  string headerHtml = wrap(markdown[count+2..$], headerTag);
  if (list) then
    return {`</ul>`&headerHtml, false};
  else
    return {headerHtml, false};
  end if
end function

function parseLineItem(string markdown, bool list)
  if begins('*',markdown) then
    string innerHtml = wrap(parseText(markdown[3..$], true), "li");
    if (list) then
      return {innerHtml, true};
    else
      return {`<ul>`&innerHtml, true};
    end if
  end if
  return {null, list};
end function

function parseParagraph(string markdown, bool list)
  if (not list) then
    return {parseText(markdown, false), false};
  else
    return {"</ul>" & parseText(markdown, false), false};
  end if
end function

function parseLine(string markdown, bool list)
  {object result, bool inListAfter} = parseHeader(markdown, list);
  if (result == null) then
    {result, inListAfter} = parseLineItem(markdown, list);
  end if
  if (result == null) then
    {result, inListAfter} = parseParagraph(markdown, list);
  end if
  if (result == null) then
    throw("Invalid markdown");
  end if
  return {result, inListAfter};
end function

global function parse(string markdown)
  sequence lines = split(markdown, "\n")
  string result = "", lineResult;
  bool list = false, newList;
  for i=1 to length(lines) do
    {lineResult, newList} = parseLine(lines[i], list);
    result &= lineResult;
    list = newList;
  end for
  if (list) then
    return result & "</ul>";
  else
    return result;
  end if
end function

--*/

--/* // At some point you give up and just rewrite it from scratch.
     // You do have adequate testing in place to support that, yeah?
     //   (of course you do, I translated all that to Phix too!)
     // You should of course at least have a go at one of the above,
     //   rather than diving headfirst straight into this option.
-- not {{trans|anything}}, rewritten from scratch:
global function parse(string markdown)
    crash("please implement parse")
end function

--*/

