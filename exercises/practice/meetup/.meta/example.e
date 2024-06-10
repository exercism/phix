global enum type weekschedule first=0, second, third, fourth, fifth, teenth, last end type
global enum type weekday Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday end type

global function day(weekschedule w, weekday dow, integer m, y)
    -- return a meetup date in the format "YYYY-MM-DD"
    integer d
    if w=last then
        d = days_in_month(y,m)
        d -= mod(day_of_week(y,m,d)-dow+7,7)
    else
        d = day_of_week(y,m,1)
        d = 1+mod(dow-d+7,7)
        if w=teenth then
            while d<13 do d += 7 end while
        elsif w<=fifth then
            d += w*7
        end if
    end if
    return sprintf("%04d-%02d-%02d",{y,m,d})
end function

