# Bunnylol Plugins

Homebrew tap for [Bunnylol](https://github.com/sidosera/lolabunny.app) commands.

## Installation

```bash
brew tap sidosera/lolabunny
brew install --cask bunnylol   # macOS menu bar app
brew install lola-core         # core plugins (github, instagram, youtube, etc.)
```

## Plugin Location

Plugins are installed to `~/.local/share/bunnylol/commands/` (XDG data directory).

You can also drop custom `.lua` files there directly.

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
