constant animals = {"fly","spider","bird","cat","dog","goat","cow","horse",
                    "spider that wriggled and jiggled and tickled inside her"},
         lines = {"I know an old lady who swallowed a %s.",
                  "She swallowed the %s to catch the %s.","",
                  "I don't know why she swallowed the fly. Perhaps she'll die.",
                  "It wriggled and jiggled and tickled inside her.",
                  "How absurd to swallow a bird!",
                  "Imagine that, to swallow a cat!",
                  "What a hog, to swallow a dog!",
                  "Just opened her throat and swallowed a goat!",
                  "I don't know how she swallowed a cow!",
                  "She's dead, of course!"}

global function food_chain()
    sequence res = {}, verses = {}
    for verse=1 to 8 do
        verses &= {{verse},verse+3}
        if verse>1 and verse<8 then
            for a=verse to 2 by -1 do
                verses &= {{a,a-1+7*(a=3)}}
            end for
            verses &= 4
        end if
        verses &= 3
    end for
    for v in verses do
        res = append(res,iff(sequence(v)?sprintf(lines[length(v)],extract(animals,v)):lines[v]))
    end for
    return join(res,"\n")
end function

