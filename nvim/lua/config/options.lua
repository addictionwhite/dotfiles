-- lua/config/options.lua
-- 基本オプション設定

local opt = vim.opt

-- リーダーキー
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- エンコーディング
opt.encoding = "utf-8"
opt.fileencodings = { "utf-8", "euc-jp", "sjis", "cp932", "iso-2022-jp" }
opt.fileformats = { "unix", "dos", "mac" }

-- 表示
opt.number = true
opt.relativenumber = false
opt.wrap = false
opt.showmatch = true
opt.matchtime = 1
opt.cursorline = true
opt.cursorcolumn = false
opt.termguicolors = true
opt.synmaxcol = 320
opt.signcolumn = "yes"
opt.laststatus = 2
opt.statusline = "%#StatusLineFilename#%f%#StatusLine#"
opt.showcmd = true
opt.cmdheight = 2
opt.showtabline = 2

-- 検索
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
opt.wrapscan = false

-- 編集
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.infercase = true
opt.textwidth = 0
opt.backspace = { "indent", "eol", "start" }

-- ファイル
opt.hidden = true
opt.autoread = true
opt.backup = false
opt.swapfile = false
opt.confirm = true

-- クリップボード
opt.clipboard = "unnamedplus"

-- マウス
opt.mouse = "a"

-- 補完
opt.completeopt = { "menuone", "noinsert", "noselect" }
opt.wildmenu = true
opt.shortmess:append("S")

-- diff
opt.diffopt = { "internal", "filler", "algorithm:histogram", "indent-heuristic" }

-- 不可視文字
opt.list = true
opt.listchars = { tab = "≫-", trail = "-", extends = "≫", precedes = "≪", nbsp = "%" }

-- fillchars
opt.fillchars = { eob = " ", vert = "│", stl = "─", stlnc = "─" }

-- netrw設定
vim.g.netrw_liststyle = 3
vim.g.netrw_altv = 1
vim.g.netrw_alto = 1
vim.g.netrw_banner = 0

-- その他
opt.ttyfast = true
opt.updatetime = 300
opt.timeoutlen = 500
