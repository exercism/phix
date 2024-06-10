global function answer(string question)
    string state = "What", op = "+"
    integer res = 0
    for word in split_any(question," ?") do
        if state=="What" and word==state then
            state = "is"
        elsif state=="is" and word==state then
            state = "num"
        elsif state=="num" then
            if not is_integer(word) then exit end if
            integer n = to_integer(word)
            switch op do
                case "+": res += n
                case "-": res -= n
                case "*": res *= n
                case "/": res /= n
                default: return "error"
            end switch
            state = "op"
        elsif state=="op" then
            state = "num"
            switch word do
                case "plus": op = "+"
                case "minus": op = "-"
                case "multiplied": {op, state} = {"*", "by"}
                case "divided": {op, state} = {"/", "by"}
                default: return "error"
            end switch
        elsif state=="by" and word==state then
            state = "num"
        else
            exit
        end if
    end for
    return iff(state=="op"?res:"error")
end function

