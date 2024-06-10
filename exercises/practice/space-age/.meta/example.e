constant planset = {{"Mercury",0.2408467},
                    {"Venus",0.61519726},
                    {"Earth",1.0},
                    {"Mars",1.8808158},
                    {"Jupiter",11.862615},
                    {"Saturn",29.447498},
                    {"Uranus",84.016846},
                    {"Neptune",164.79132}},
        {planets,ratios} = columnize(planset)
constant year_in_seconds = 365.25 * 24 * 60 * 60

global function age_on(string planet, atom seconds) 
    integer k = find(planet,planets)
    return iff(k?seconds/year_in_seconds/ratios[k]:false)
end function

