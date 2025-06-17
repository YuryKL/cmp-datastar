# cmp-datastar

Neovim completion source for [Datastar](https://data-star.dev/) data-* attributes.

Should the snippets in data.lua become out-of-date, they can be regenerated with [cmp-datastar-gen](https://github.com/YuryKL/cmp-datastar-gen).

## Features

- Provides completions for all Data* attributes
- Context-aware completions for `data-on` events
- Snippet support for attribute values
- Only triggers within HTML tag attributes
- Default rocket icon (🚀) for better visibility

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "hrsh7th/nvim-cmp",
    dependencies = {
        "YuryKL/cmp-datastar"
    },
    config = function()
        -- Optional: Add other filetypes, must be done before cmp is setup
        require('cmp_datastar').setup({
            filetypes = { "html", "templ" },
        })
        local cmp = require('cmp')
        cmp.setup({
            -- Required: Add cmp-datastar as a source
            sources = {
                { name = "cmp-datastar" }
            },
            -- Optional: Customize the completion menu icon
            formatting = {
                format = function(entry, vim_item)
                    if entry.source.name == 'cmp-datastar' then
                        vim_item.kind = '🚀'  -- Change this to text if you prefer
                    end
                    return vim_item
                end,
            }
        })
    end
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    'hrsh7th/nvim-cmp',
    requires = {
        'YuryKL/cmp-datastar'
    },
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            sources = {
                { name = "cmp-datastar" }
            }
        })
    end
}
```

## Usage

In an HTML file, start typing a Datastar attribute:
- `data-` - Shows all available Datastar attributes
- `data-on-` - Shows available events (click, keydown, etc.)
- `data-on-click` - Completes with snippet for expression

## Contributing

Pull requests are welcome!

## License

MIT
