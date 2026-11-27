-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "●",
  },
  underline = true,
  severity_sort = true,
  update_in_insert = false,
})
