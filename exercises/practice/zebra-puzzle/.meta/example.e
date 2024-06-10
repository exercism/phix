--enum colour, nationality, drink, smoke, pet -- (now implicit)
enum red, ivory, green, yellow, blue
enum English, Spaniard, Ukrainian, Norwegian, Japanese
enum tea, coffee, milk, orangejuice, water
enum OldGold, Kools, Chesterfields, LuckyStrike, Parliaments
enum dog, snails, fox, horse, zebra

constant nationalities = {"Englishman","Spaniard","Ukrainian","Norwegian","Japanese"}
 
constant p5 = permutes(tagset(5)),  -- all permutes of {1,2,3,4,5},
         lp = length(p5)            -- (== factorial(5), ie 120)
 
// In the following, c1,c2 are indices to p5, for colour..pet, 
// and v1,v2 are from their corresponding enums, so eg p5[c1]
// might be {1,4,3,2,5} for the colours of 1..5 and finding
// v1 in that gives us a house number. Checking the specified
// condition, eg [h] == green && [h+1] == ivory is then easy.

function left_of(integer c1, v1, c2, v2)
  integer h = find(v1,p5[c1])
  return h<=4 and p5[c2][h+1]=v2
end function

function same_house(integer c1, v1, c2, v2)
  integer h = find(v1,p5[c1])
  return p5[c2][h]=v2
end function
 
function next_to(integer c1, v1, c2, v2)
  integer h1 = find(v1,p5[c1]),
          h2 = find(v2,p5[c2])
  return abs(h1-h2)=1
end function
 
global function find_solution()
  for colour=1 to lp do
    if left_of(colour,green,colour,ivory) then
      for nationality=1 to lp do
        if p5[nationality][1]=Norwegian -- Norwegian lives in 1st house
        and same_house(nationality,English,colour,red) 
        and next_to(nationality,Norwegian,colour,blue) then
          for drink=1 to lp do
            if same_house(nationality,Ukrainian,drink,tea)
            and same_house(drink,coffee,colour,green)
            and p5[drink][3]=milk then -- middle house drinks milk
              for smoke=1 to lp do
                if same_house(colour,yellow,smoke,Kools)
                and same_house(nationality,Japanese,smoke,Parliaments)
                and same_house(smoke,LuckyStrike,drink,orangejuice) then
                  for pet=1 to lp do
                    if same_house(nationality,Spaniard,pet,dog)
                    and same_house(smoke,OldGold,pet,snails)
                    and next_to(smoke,Chesterfields,pet,fox)
                    and next_to(pet,horse,smoke,Kools) then
                      integer w = p5[nationality][find(water,p5[drink])],
                              z = p5[nationality][find(zebra,p5[pet])]
                      return extract(nationalities,{w,z})
                    end if
                  end for
                end if
              end for
            end if
          end for
        end if
      end for
    end if
  end for
  return "no solution"
end function

--constant colours = {"red","ivory","green","yellow","blue"}
--constant drinks = {"tea","coffee","milk","orangejuice","water"}
--constant smokes = {"Pall Mall","Kools","Chesterfields","Blue Master","Parliaments"}
--constant pets = {"dog","snails","fox","horse","zebra"}
--constant sets = {colours, nationalities, drinks, smokes, pets}
--  procedure print_houses(sequence perms)
--    for h=1 to 5 do
--      sequence args = {h}
--      for i,p in perm do
--        args = append(args,sets[i][p5[p][h]])
--      end for
--      printf(1,"House %d: %|9s %|10s %|12s %|14s %=7s\n",args)
--    end for
--  end procedure
--                    print_houses({colour,nationality,drink,smoke,pet})

