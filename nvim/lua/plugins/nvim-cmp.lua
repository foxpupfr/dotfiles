return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Tells nvim-cmp how to read Pyright data
      "hrsh7th/cmp-buffer",   -- Allows autocompleting words already in the current file
    },
    config = function()
      local cmp = require('cmp')
      
      cmp.setup({
        -- This controls how the menu behaves:
        -- menu: show popup, menuone: show even for 1 match, noselect: don't auto-insert code until you hit enter
        completion = {
          completeopt = 'menu,menuone,noinsert,noselect',
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),      -- Force open menu manually
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- 'Enter' to accept code choice
          ['<Tab>'] = cmp.mapping.select_next_item(),  -- Down arrow/Next item
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),-- Up arrow/Previous item
        }),
        sources = cmp.config.sources({
          { name = 'nvim-lsp' }, -- Priority 1: Pyright/LSP completions
          { name = 'buffer' },   -- Priority 2: Text matching in file
        })
      })
    end
  }
}
