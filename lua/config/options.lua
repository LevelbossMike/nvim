-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local g = vim.g

------------
-- Leader --
------------
vim.g.mapleader = ","

-- Look nice
opt.termguicolors = true
opt.number = true

-- turn off lazyvim's relative line numbers
opt.relativenumber = false

----------------
-- Whitespace --
----------------
-- a tab is two spaces
opt.tabstop = 2
opt.shiftwidth = 2
-- use spaces, not tabs
opt.expandtab = true
-- wrap lines
opt.wrap = true
opt.textwidth = 79
opt.colorcolumn = "79"

-- see :help fo-table
-- q - allow formatting of comments with "gq"
-- n - recognice numbered lists
-- 1 - Don't break a line after a one-letter word.
opt.formatoptions = "qn1"

-- show end of lines
opt.list = true
opt.listchars = { trail = "·", eol = "~", tab = "▸ " }

---------------
-- Searching --
---------------
-- ignore case on search
opt.ignorecase = true
-- unless they contain at least one capital letter
opt.smartcase = true

-- Resize splits when the window is resized
vim.cmd([[
  au VimResized * exe "normal! \<c-w>="
]])

----------
-- misc --
----------
-- no need for swapfiles
opt.swapfile = false
-- yanking should save to the system clipboard
opt.clipboard = "unnamedplus"

-- Set autoread to automatically reload files when changed externally
-- useful for when agents change code
vim.opt.autoread = true

-- Proactively check for file changes when the window gains focus or a buffer
-- is entered
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "checktime",
})

-------------
-- lazyvim --
-------------
-- don't animate
vim.g.snacks_animate = false
