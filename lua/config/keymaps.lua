-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set

keymap({ "i", "v" }, "jk", "<Esc>", { desc = "Easier <Esc>", silent = true })
keymap({ "i", "v" }, "JK", "<Esc>", { desc = "Easier <Esc>", silent = true })
keymap({ "i", "v" }, "JK", "<Esc>", { desc = "Easier <Esc>", silent = true })
keymap({ "t" }, "jk", "<c-\\><c-n>", { desc = "Easier <Esc>", silent = true })
keymap({ "t" }, "JK", "<c-\\><c-n>", { desc = "Easier <Esc>", silent = true })
keymap({ "n", "i", "v" }, "<A-h>", "<cmd>tabprevious<cr>", { desc = "Previous tab", silent = true })
keymap({ "n", "i", "v" }, "<A-l>", "<cmd>tabnext<cr>", { desc = "Next tab", silent = true })
keymap({ "v", "n" }, "<leader>y", '\"+y', { desc = "Yank to system clipboard", silent = true })
keymap({ "v", "n" }, "<leader>p", '\"+p', { desc = "Paste from system clipboard", silent = true })

-- kitty-navigator config
local knav = require("kitty-navigator")

keymap({ "n" }, "<C-h>", knav.navigateLeft, { desc = "Kitty Window left", silent = true })
keymap({ "n" }, "<C-l>", knav.navigateRight, { desc = "Kitty Window right", silent = true })
keymap({ "n" }, "<C-j>", knav.navigateDown, { desc = "Kitty Window down", silent = true })
keymap({ "n" }, "<C-k>", knav.navigateUp, { desc = "Kitty Window up", silent = true })
