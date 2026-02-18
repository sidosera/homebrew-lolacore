function info()
    return {
        bindings = {"r", "reddit"},
        description = "Browse Reddit subreddits or search",
        example = "r rust"
    }
end

function process(full_args)
    local args = get_args(full_args, "r")
    if args == "" then
        args = get_args(full_args, "reddit")
    end
    
    if args == "" then
        return "https://www.reddit.com"
    end
    
    if args:match("^r/") then
        return "https://www.reddit.com/" .. args
    end
    
    return "https://www.reddit.com/r/" .. url_encode(args)
end
