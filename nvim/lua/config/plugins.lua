-- Plugins are managed by the native vim.pack (nvim 0.12+).
-- Update with :lua vim.pack.update()
vim.pack.add({
  "https://github.com/kepano/flexoki-neovim",
  "https://github.com/lukas-reineke/indent-blankline.nvim",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/nvim-mini/mini.pick",
  -- master branch is frozen; main is the maintained rewrite
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

-- colorscheme; no setup() needed, pick variant from vim.o.background (set in config.options)
vim.cmd.colorscheme(vim.o.background == "dark" and "flexoki-dark" or "flexoki-light")

-- line numbers in light grey; current line number stays prominent
vim.api.nvim_set_hl(0, "LineNr", { fg = "#B7B5AC" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#100F0F", bold = true })

require("oil").setup({
  view_options = {
    show_hidden = true,
    natural_order = true,
  },
  skip_confirm_for_simple_edits = true,
})

require("mini.pick").setup()

-- indentation guides; scope highlight uses treesitter
require("ibl").setup({
  indent = { char = "▏" },
  scope = { char = "▏", enabled = true, show_start = false, show_end = false },
})

-- no-op for already installed parsers
require("nvim-treesitter").install({
  "bash",
  "c_sharp",
  "cpp",
  "css",
  "html",
  "java",
  "javascript",
  "json",
  "php",
  "python",
  "toml",
  "tsx",
  "typescript",
  "yaml",
  "zig",
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("DotfilesTreesitter", { clear = true }),
  callback = function(ev)
    -- falls back to regex syntax when no parser is available
    pcall(vim.treesitter.start, ev.buf)
  end,
})
