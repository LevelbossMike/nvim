-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-----------------------
-- Window navigation --
-----------------------
-- Ease up window navigation - lazyvim already has this
-- keymap.set("n", "<C-h>", "<C-w>h")
-- keymap.set("n", "<C-j>", "<C-w>j")
-- keymap.set("n", "<C-k>", "<C-w>k")
-- keymap.set("n", "<C-l>", "<C-w>l")

-- Make it easy to resize windows
keymap.set("n", "+", "<C-W>+")
keymap.set("n", "-", "<C-W>-")
keymap.set("n", "ö", "<C-W><")
keymap.set("n", "ä", "<C-W>>")

------------
-- Search --
------------
-- dismiss higlighted search items on <esc>
keymap.set("n", "<esc>", "<cmd>nohlsearch<cr><esc>", { desc = "No Highlight and Escape" })

-----------
-- NetRW --
-----------
-- open file explorer with <leader><Tab>
keymap.set("n", "<leader><Tab>", ":Explore<CR>", { noremap = true, silent = true })
