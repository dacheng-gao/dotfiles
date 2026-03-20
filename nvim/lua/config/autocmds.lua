local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local general = augroup("DotfilesGeneral", { clear = true })
autocmd("TextYankPost", {
  group = general,
  callback = function()
    vim.highlight.on_yank({ timeout = 160 })
  end,
})

local prose = augroup("DotfilesProse", { clear = true })
autocmd("FileType", {
  group = prose,
  pattern = { "gitcommit", "log", "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

local small_indent = augroup("DotfilesSmallIndent", { clear = true })
autocmd("FileType", {
  group = small_indent,
  pattern = {
    "css",
    "dart",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "jsonc",
    "lua",
    "sh",
    "toml",
    "typescript",
    "typescriptreact",
    "yaml",
    "zsh",
  },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})

autocmd("FileType", {
  group = small_indent,
  pattern = { "make" },
  callback = function()
    vim.opt_local.expandtab = false
  end,
})
