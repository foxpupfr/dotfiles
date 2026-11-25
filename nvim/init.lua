vim.opt.number = true --line numbering 
vim.opt.smartindent = false --smart indent
vim.opt.autoindent = true   -- auto indent
vim.opt.tabstop = 4 --tab size
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true 
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true

require("config.lazy") --lazy
require("config.keybinds")
vim.opt.swapfile = false  -- Disables .swp files
vim.opt.backup = false    -- Disables ~ backup
vim.opt.writebackup = false 
vim.opt.undofile = true  

--treesitter changes
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
    if lang then
      pcall(vim.treesitter.start, 0, lang)
    end
  end,
})

-- minor tweaks
require("autoclose").setup() --autolose
require('lualine').setup{options = { theme = 'molokai' },} --lualine
require('mini.cmdline').setup() --mini cmdline plugin

--lsp
local coq = require "coq"
vim.lsp.enable('pyright')
vim.lsp.enable('rust_analuszer')
vim.lsp.inline_completion.enable()


--boarder control 
vim.o.winborder = "rounded" --"rounded", "single", "double", "solid", "shadow", "none"
vim.o.pumborder = "rounded" --
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#c0caf5" })

