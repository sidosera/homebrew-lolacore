# Bunnylol Plugins

Homebrew tap for [Bunnylol](https://github.com/sidosera/bunnylol.rs) commands.

## Installation

```bash
brew tap sidosera/lolabunny
brew install lola-core
```

## Creating Your Own Plugin

Plugins are Lua scripts with two required functions:

```lua
function info()
    return {
        bindings = {"cmd", "alias"},
        description = "What this command does",
        example = "cmd example-usage"
    }
end

function process(full_args)
    local args = get_args(full_args, "cmd")
    if args == "" then
        return "https://default-url.com"
    end
    return "https://example.com/" .. url_encode(args)
end
```

## License

MIT
