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

-- TMUX config
keymap({ "n" }, "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Tmux Window left", silent = true })
keymap({ "n" }, "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Tmux Window right", silent = true })
keymap({ "n" }, "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Tmux Window down", silent = true })
keymap({ "n" }, "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Tmux Window up", silent = true })
