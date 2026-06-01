-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here--
--
--
vim.opt.shell = "/usr/local/bin/bash --login"
vim.g.lazyvim_picker = "fzf"

vim.opt.ignorecase = true
vim.opt.scrolloff = 10
vim.opt.swapfile = false
vim.opt.directory = ""

-- Disable LSP logging — the log grows to 40+ MB and adds startup overhead
vim.lsp.set_log_level("off")
