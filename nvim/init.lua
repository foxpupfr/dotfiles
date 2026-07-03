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

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true

vim.keymap.set("n", "<leader>se", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

--lsp

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = { 'pyright', 'ts_ls', 'lua_ls', 'gopls', 'rust_analyzer' }

for _, server in ipairs(servers) do
    vim.lsp.config(server, {
        capabilities = capabilities,
    })
    vim.lsp.enable(server)
end
