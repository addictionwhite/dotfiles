-- lua/config/autocmds.lua
-- 自動コマンド設定

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- QuickFix自動オープン
augroup("QuickFixAutoOpen", { clear = true })
autocmd("QuickFixCmdPost", {
  group = "QuickFixAutoOpen",
  pattern = { "*grep*", "*ag*" },
  command = "cwindow",
})

-- 改行時の自動コメントアウト無効
augroup("DisableAutoComment", { clear = true })
autocmd("FileType", {
  group = "DisableAutoComment",
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

-- 長い行のあるJSONファイルでシンタックスをオフ
augroup("JsonPerformance", { clear = true })
autocmd("Syntax", {
  group = "JsonPerformance",
  pattern = "json",
  callback = function()
    if vim.fn.col("$") > 1000 then
      vim.cmd("syntax off")
    end
  end,
})

-- Vimファイルの折りたたみ
autocmd("FileType", {
  pattern = "vim",
  command = "setlocal foldmethod=marker",
})

-- CloudFormation YAML
autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.template.yaml", "*.yaml" },
  command = "set ft=cloudformation.yaml",
})

-- ファイルタイプ別インデント
augroup("FileTypeIndent", { clear = true })
autocmd("FileType", {
  group = "FileTypeIndent",
  pattern = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end,
})

-- カレントウィンドウのカーソルライン
augroup("CursorLineControl", { clear = true })
autocmd("WinEnter", {
  group = "CursorLineControl",
  pattern = "*",
  command = "setlocal cursorline",
})
autocmd("WinLeave", {
  group = "CursorLineControl",
  pattern = "*",
  command = "setlocal nocursorline",
})

-- ファイルパス表示
augroup("EchoFilePath", { clear = true })
autocmd("WinEnter", {
  group = "EchoFilePath",
  pattern = "*",
  callback = function()
    vim.cmd("normal! 1\x07")
  end,
})

-- Fugitive設定
augroup("FugitiveSettings", { clear = true })
autocmd("FileType", {
  group = "FugitiveSettings",
  pattern = "fugitive",
  callback = function()
    vim.keymap.set("n", ")", ":silent! /^[+-]/<CR>:nohlsearch<CR>", { buffer = true, silent = true })
    vim.keymap.set("n", "(", ":silent! ?^[+-]?<CR>:nohlsearch<CR>", { buffer = true, silent = true })
    vim.keymap.set("n", "S", "s", { buffer = true })
    vim.keymap.set("v", "S", ":s<CR>", { buffer = true })
    vim.cmd("only")
  end,
})

-- 起動・終了メッセージ
autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    print("Neovim Ready!")
  end,
})
