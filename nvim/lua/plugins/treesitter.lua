return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main", -- made some changes
  lazy = false,
  config = function()
    -- Simply run the top-level initializer now
    require("nvim-treesitter").setup({
      auto_install = true, 
    })
  end,
}
