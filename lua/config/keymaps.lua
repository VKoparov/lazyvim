-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local api = vim.api

api.nvim_set_keymap("n", "<leader>zn", ":ZenMode<CR>", {})
