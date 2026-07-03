return{ 'lfrati/onesearch.nvim', config = function()
        vim.keymap.set("n", "<leader>ss", ":lua require('onesearch').search()<CR>")
        vim.keymap.set("v", "<leader>sv", ":<C-u>lua require('onesearch').visual_search()<CR>")
end }
