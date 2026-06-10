vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.number = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.cursorline = true
opt.wrap = true
opt.linebreak = true
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.backspace = { "indent", "eol", "start" }
opt.undofile = true
opt.confirm = true
opt.mouse = "a"
opt.scrolloff = 4
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.background = "light"
opt.splitbelow = true
opt.splitright = true
opt.wildmenu = true

opt.formatoptions:remove({ "o" })
