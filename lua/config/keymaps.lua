-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local api = vim.api

api.nvim_set_keymap("n", "<leader>zn", ":ZenMode<CR>", {})

vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action (Quick Fix)" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })

if vim.g.neovide then
  vim.keymap.set("n", "<D-LeftMouse>", "<LeftMouse><Cmd>lua vim.lsp.buf.definition()<CR>", {
    desc = "Go to Definition Under Mouse",
  })
end

vim.keymap.set("n", "<leader>xD", function()
  vim.diagnostic.setqflist({ title = "Diagnostics" })
end, { desc = "Diagnostics Quickfix List" })
