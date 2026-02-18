function info()
    return {
        bindings = {"g", "google"},
        description = "Google search",
        example = "g rust programming"
    }
end

function process(full_args)
    local args = get_args(full_args, "g")
    if args == "" then
        args = get_args(full_args, "google")
    end
    
    if args == "" then
        return "https://www.google.com"
    end
    
    return "https://www.google.com/search?q=" .. url_encode(args)
end
