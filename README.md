# cmp-datastar

Neovim completion source for [Datastar](https://data-star.dev/) data-* attributes.

## Features

- Provides completions for all Data* attributes
- Context-aware completions for `data-on` events
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
**Warning - Untested**

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

## Contributing
Pull Requests welcome.

## License

MIT
