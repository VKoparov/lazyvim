-- In your plugins configuration file (e.g., ~/.config/nvim/lua/user/plugins.lua)

-- Add this to your list of plugins
return {
  -- Other plugins...

  -- To include tokyonight.nvim
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

  -- Other plugins...
}
