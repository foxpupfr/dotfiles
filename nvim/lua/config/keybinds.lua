vim.g.mapleader = " " --leader
vim.keymap.set("n", "<leader>fm", vim.cmd.Ex) --file manager

--Nvim tree
vim.keymap.set("n", "<leader>fs", ":NvimTreeOpen<cr>")
vim.keymap.set("n", "<leader>fe", ":NvimTreeClose<cr>")

--Themery
vim.keymap.set("n", "<leader>th", ":Themery<cr>")

--Transparancy
vim.keymap.set("n", "<leader>tth", ":TransparentToggle<cr>")

--One search
vim.keymap.set("n", "<leader>ss", ":lua require('onesearch').search()<CR>")
vim.keymap.set("v", "<leader>sv", ":<C-u>lua require('onesearch').visual_search()<CR>")
vim.keymap.set("n", "<leader>se", ":noh<CR>")

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fc', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

