-- lua/config/keymaps.lua
-- キーマッピング設定

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 検索
keymap("n", "/", "/\\v", { noremap = true })
keymap("n", "<ESC><ESC>", ":nohlsearch<CR>", opts)

-- ウィンドウ移動
keymap("n", "ww", "<C-w>w", opts)
keymap("n", "wj", "<C-w>j", opts)
keymap("n", "wk", "<C-w>k", opts)
keymap("n", "wl", "<C-w>l", opts)
keymap("n", "wh", "<C-w>h", opts)

-- 検索時にカーソルを中央に
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)

-- Quickfix操作
keymap("n", "gp", ":cprevious<CR>", opts)
keymap("n", "gn", ":cnext<CR>", opts)
keymap("n", "gc", ":ccl<CR>", opts)

-- Visualモードでペースト時にレジスタを上書きしない
keymap("x", "p", '"_dP', opts)

-- 選択範囲内で検索
keymap("v", "z/", "<ESC>/\\%V", opts)
keymap("v", "z?", "<ESC>?\\%V", opts)

-- 現在のファイルのディレクトリをnetrwで開く
keymap("n", "<leader>nf", function()
  local dir = vim.fn.expand("%:p:h")
  vim.cmd("edit " .. dir)
end, opts)

-- 設定ファイル操作
keymap("n", "<leader>ev", ":edit $MYVIMRC<CR>", opts)
keymap("n", ",ev", ":edit $MYVIMRC<CR>", opts)
keymap("n", "<leader>vi", ":source $MYVIMRC<CR>", opts)

-- ファイル保存
keymap("n", "<leader>w", ":w<CR>", opts)

-- ウィンドウ最大化トグル
vim.g.toggle_window_size = 0
keymap("n", "<Space>w", function()
  if vim.g.toggle_window_size == 1 then
    vim.cmd("wincmd =")
    vim.g.toggle_window_size = 0
  else
    vim.cmd("resize")
    vim.cmd("vertical resize")
    vim.g.toggle_window_size = 1
  end
end, opts)

-- ビジュアルモードでマクロ実行
keymap("x", "@", function()
  vim.cmd('echo "@".getcmdline()')
  local char = vim.fn.nr2char(vim.fn.getchar())
  vim.cmd("'<,'>normal @" .. char)
end, opts)

-- ファイルパスをクリップボードにコピー
keymap("n", "<leader>cp", function()
  local filepath = vim.fn.expand("%:.")
  vim.fn.setreg("+", filepath)
  print("Copied: " .. filepath)
end, opts)

-- 行範囲をクリップボードにコピー (Visual mode)
keymap("x", "c", function()
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")
  local file = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  local result = string.format("%s#L%d-L%d", file, start_line, end_line)
  vim.fn.setreg("+", result)
  print("Copied: " .. result)
end, opts)

-- MRUコマンド (最近開いたファイル)
vim.api.nvim_create_user_command("MRU", function()
  require("telescope.builtin").oldfiles()
end, {})

-- VSCode連携 (vscode-neovim用)
if vim.g.vscode then
  keymap("n", "wh", "<Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>", opts)
  keymap("n", "wl", "<Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>", opts)
  keymap("n", "wk", "<Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>", opts)
  keymap("n", "wj", "<Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>", opts)
  keymap("n", "gr", "<Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>", opts)
  keymap("n", "<leader>nf", function()
    vim.fn.VSCodeNotify("vsnetrw.open")
  end, opts)
end
