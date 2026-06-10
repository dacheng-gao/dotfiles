-- Plugins are managed by the native vim.pack (nvim 0.12+).
-- Update with :lua vim.pack.update()
vim.pack.add({
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/nvim-mini/mini.pick",
  -- master branch is frozen; main is the maintained rewrite
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

require("oil").setup({
  view_options = {
    show_hidden = true,
    natural_order = true,
  },
  skip_confirm_for_simple_edits = true,
})

require("mini.pick").setup()

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
