local opt = vim.opt

local undo_dir = vim.fn.stdpath("state") .. "/undo"
vim.fn.mkdir(undo_dir, "p")

opt.number = true
opt.relativenumber = false
opt.hidden = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 6
opt.sidescrolloff = 8
opt.splitbelow = true
opt.splitright = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.inccommand = "split"
opt.cursorline = true
opt.wrap = false
opt.linebreak = true
opt.breakindent = true
opt.smartindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.shiftround = true
opt.backspace = { "indent", "eol", "start" }
opt.history = 1000
opt.undofile = true
opt.undodir = undo_dir
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.updatetime = 200
opt.timeoutlen = 300
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 12
opt.laststatus = 3
opt.confirm = true
opt.showmode = false
opt.wildmode = { "longest", "full" }
opt.wildignorecase = true
opt.virtualedit = "block"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.fillchars = { eob = " ", fold = " ", vert = "│" }
opt.list = false

opt.shortmess:append("c")
opt.formatoptions:remove({ "o" })
opt.formatoptions:append("rnj")
