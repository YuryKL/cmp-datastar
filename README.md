# cmp-datastar

Neovim completion source for [Data*](https://data-star.dev/) HTML attributes.

## Features

- Provides completions for all Data* attributes
- Smart context-aware completions for `data-on` events
- Snippet support for attribute values
- Only triggers within HTML tag attributes

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    "hrsh7th/nvim-cmp",
    dependencies = {
        "yurykl/cmp-datastar"
    },
    config = {
        sources = require('cmp').config.sources({
            { name = "cmp-datastar" }
        })
    }
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  'hrsh7th/nvim-cmp',
  requires = {
    'yurykl/cmp-datastar',
    -- other completion sources...
  }
}
```

## Setup

Add `datastar` to your nvim-cmp sources:

```lua
require('cmp').setup({
  sources = {
    { name = 'datastar' },
    -- other sources...
  },
})
```

## Usage

In an HTML file, start typing a Data* attribute:

- `data-` - Shows all available attributes
- `data-on-` - Shows available events (click, keydown, etc.)
- `data-on-click` - Completes with snippet for expression

## License

MIT
