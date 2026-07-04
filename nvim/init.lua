require("config.lazy")
vim.opt.number = true
vim.opt.smartindent = false
vim.opt.autoindent = true
vim.opt.smartindent = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true 
require('config.options')
require('config.keybinds')
require('lualine').setup{
    options = { theme = 'molokai' },
}
-- ~/.config/nvim/init.lua

vim.opt.swapfile = false  -- Disables .swp files (No more E325 errors)
vim.opt.backup = false    -- Disables ~ backup files
vim.opt.writebackup = false 

-- Optional but recommended:
vim.opt.undofile = true   -- Saves undo history to a file so you can 
                          -- undo changes even after closing Neovim!
-- -- ~/.config/nvim/init.lua
vim.api.nvim_create_user_command('Sudow', 'w !sudo tee % > /dev/null', {})
--make nvim background transparent
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE
  hi VertSplit guibg=NONE
  hi StatusLine guibg=NONE
  hi StatusLineNC guibg=NONE
  hi EndOfBuffer guibg=NONE
]]
vim.cmd.colorscheme "catppuccin-nvim"

--treesitter changes
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
    if lang then
      pcall(vim.treesitter.start, 0, lang)
    end
  end,
})

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true

--lsp

local coq = require "coq"
vim.lsp.inline_completion.enable()

