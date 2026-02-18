function info()
    return {
        bindings = {"notion"},
        description = "Navigate to Notion",
        example = "notion"
    }
end

function process(full_args)
    local args = get_args(full_args, "notion")
    
    if args == "" then
        return "https://www.notion.so"
    end
    
    return "https://www.notion.so/" .. url_encode(args)
end
