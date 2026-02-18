function info()
    return {
        bindings = {"ig", "instagram"},
        description = "Navigate to Instagram profiles",
        example = "ig natgeo"
    }
end

function process(full_args)
    local args = get_args(full_args, "ig")
    if args == "" then
        args = get_args(full_args, "instagram")
    end
    
    if args == "" then
        return "https://www.instagram.com"
    end
    
    return "https://www.instagram.com/" .. url_encode(args)
end
