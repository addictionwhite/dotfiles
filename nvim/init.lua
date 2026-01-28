-- init.lua
-- Neovim 設定ファイル (Vim から移行)

-- lazy.nvim（プラグインマネージャ）の自動インストール
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 基本設定を読み込む前にリーダーキーを設定
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 基本設定
require("config.options")

-- プラグイン
require("lazy").setup("plugins", {
  defaults = {
    lazy = false,
  },
  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
  checker = {
    enabled = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- キーマッピング
require("config.keymaps")

-- 自動コマンド
require("config.autocmds")

-- カラースキーム
require("config.colorscheme")

-- ローカル設定ファイルがあれば読み込む
local local_config = vim.fn.expand("~/.config/nvim/lua/config/local.lua")
if vim.fn.filereadable(local_config) == 1 then
  require("config.local")
end
