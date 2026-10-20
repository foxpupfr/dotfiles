return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
          themes = {"gruvbox","tokyonight","kanagawa-wave","kanagawa-dragon","catppuccin","nightfox","tokyodark","gruvbox-material","rose-pine-moon","rose-pine-dawn","kanagawa-lotus"},
          livepreview = true,
      })
    end
  }
