-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.o

o.list = true
o.rnu = true

-- Setting the 80 column bar
o.cc = "80"

-- Set the clipboard back to the default. Avoids having to do the copy dance
-- by keeping the nvim y separate from the clipboard by default
o.clipboard = ""
