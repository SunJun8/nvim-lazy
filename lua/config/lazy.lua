-- 2023/9/28

-- 1. Prepare lazy.nvim module (existence check)
-- stdpath("data")
-- macOS/Linux: ~/.local/share/nvim
-- Windows: ~/AppData/Local/nvim-data

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end

-- 2. Set lazypath as runtime path
-- rtp (runtime path)
-- When nvim searches for a path, it also searches from the prepend path in addition to the existing paths
-- Otherwise, require("lazy") below won't be found
--
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

local opts = {
  git = { log = { '--since=3 days ago' } },
  ui = { custom_keys = { false } },
  install = { colorscheme = { 'tokyonight' } },
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        'gzip',
        'netrwPlugin',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
        'rplugin',
        'editorconfig',
        'matchparen',
        'matchit',
      },
    },
  },
}

lazy.setup('plugins', opts)
