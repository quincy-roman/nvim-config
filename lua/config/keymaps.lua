-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set

keymap({ "i", "v" }, "jk", "<Esc>", { desc = "Easier <Esc>", silent = true })
keymap({ "i", "v" }, "JK", "<Esc>", { desc = "Easier <Esc>", silent = true })
keymap({ "i", "v" }, "JK", "<Esc>", { desc = "Easier <Esc>", silent = true })
keymap({ "n", "i", "v" }, "<A-h>", "<cmd>tabprevious<cr>", { desc = "Previous tab", silent = true })
keymap({ "n", "i", "v" }, "<A-l>", "<cmd>tabnext<cr>", { desc = "Next tab", silent = true })
