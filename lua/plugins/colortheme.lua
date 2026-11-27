-- Choose the startup theme: rose-pine-moon, catppuccin, gruvbox, or tokyonight.
local colorscheme = "rose-pine"

return {
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = colorscheme },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    opts = {
      styles = { transparency = not vim.g.neovide },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        neotree = true,
        mason = true,
        gitsigns = true,
        telescope = true,
        leap = true,
        notify = true,
        noice = true,
        cmp = true,
        native_lsp = {
          enabled = true,
        },
        lsp_trouble = true,
        navic = {
          enabled = true,
          custom_bg = "NONE",
        },
        which_key = true,
      },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
