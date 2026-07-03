return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false, -- We DON'T lazy load this because we want colors immediately
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c", "python", "lua", "bash", "javascript", "java", "ruby", "zig",
        "haskell", "ocaml", "perl", "asm", "go", "html", "css", "php",
        "powershell", "xml", "yaml", "kotlin", "markdown", "typescript", "typst"
      },
      highlight = { enable = true },
      indent = { enable = false }, -- Change to false to disable Treesitter auto-indentation
    })
  end,
}

