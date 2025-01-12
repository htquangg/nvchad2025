require "nvchad.options"

-- add yours here!

local opt = vim.opt
local g = vim.g

-- clipboard
opt.clipboard:append "unnamedplus" -- use system clipboard as default register

-- Indenting
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.softtabstop = 2
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true --

opt.fillchars = { eob = " " }
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.mouse = "a"

-- Numbers
opt.number = true
opt.relativenumber = true -- 2 spaces for tabs (prettier default)
opt.numberwidth = 2
opt.ruler = false

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- turn off swapfile
opt.swapfile = false

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
-- need iTerm2 or any true Color Terminal
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- other stuff
opt.colorcolumn = "80,100"

g.mapleader = " "
