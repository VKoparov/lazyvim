return {
  "folke/noice.nvim",
  -- Neovide and Noice can compete for Neovim's external message UI.
  cond = function()
    return not vim.g.neovide
  end,
}
