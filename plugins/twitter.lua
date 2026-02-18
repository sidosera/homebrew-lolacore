function info()
    return {
        bindings = {"tw", "twitter", "x"},
        description = "Navigate to Twitter/X profiles or search",
        example = "tw elonmusk"
    }
end

function process(full_args)
    local args = get_args(full_args, "tw")
    if args == "" then
        args = get_args(full_args, "twitter")
    end
    if args == "" then
        args = get_args(full_args, "x")
    end
    
    if args == "" then
        return "https://twitter.com"
    end
    
    if args:match("^@") then
        return "https://twitter.com/" .. args:sub(2)
    end
    
    return "https://twitter.com/" .. url_encode(args)
end
