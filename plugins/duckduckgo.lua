function info()
    return {
        bindings = {"ddg", "duckduckgo"},
        description = "DuckDuckGo search",
        example = "ddg privacy browser"
    }
end

function process(full_args)
    local args = get_args(full_args, "ddg")
    if args == "" then
        args = get_args(full_args, "duckduckgo")
    end
    
    if args == "" then
        return "https://duckduckgo.com"
    end
    
    return "https://duckduckgo.com/?q=" .. url_encode(args)
end
