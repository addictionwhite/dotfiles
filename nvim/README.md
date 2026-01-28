# Neovim 設定

Vim から移行した Neovim 設定ファイルです。

## ディレクトリ構造

```
~/.config/nvim/
├── init.lua                    # メインエントリポイント
├── lazy-lock.json              # プラグインのバージョンロック
└── lua/
    ├── config/
    │   ├── options.lua         # 基本オプション設定
    │   ├── keymaps.lua         # キーマッピング
    │   ├── autocmds.lua        # 自動コマンド
    │   ├── colorscheme.lua     # カラースキーム・UI設定
    │   └── local.lua           # ローカル設定（任意、gitignore推奨）
    └── plugins/
        └── init.lua            # プラグイン定義
```

## 各ファイルの説明

### init.lua

メインの設定ファイル。以下を行う:
- lazy.nvim（プラグインマネージャ）の自動インストール
- リーダーキーの設定（Space）
- 各設定モジュールの読み込み

### lua/config/options.lua

Vim/Neovim の基本オプション設定:
- エンコーディング（UTF-8）
- 表示設定（行番号、カーソルライン、折り返し無効など）
- 検索設定（大文字小文字無視、インクリメンタル検索など）
- 編集設定（タブ幅4、スペース展開など）
- クリップボード連携
- マウス設定

### lua/config/keymaps.lua

キーマッピング定義:

| キー | 機能 |
|------|------|
| `<Space>` | リーダーキー |
| `<Space>f` | ファイル検索 (Telescope) |
| `<Space>b` | バッファ一覧 |
| `<Space>sf` | grep検索 |
| `<Space>nf` | 現在ファイルのディレクトリを開く (netrw) |
| `<Space>ev` | init.lua を開く |
| `<Space>vi` | 設定を再読み込み |
| `<Space>w` | ファイル保存 |
| `<Space>h` | 単語をハイライト |
| `<Space>H` | ハイライトをクリア |
| `<Space>cp` | ファイルパスをコピー |
| `s` | 2文字ジャンプ (hop.nvim) |
| `gd` | 定義へジャンプ (LSP) |
| `gr` | 参照一覧 (LSP) |
| `gh` / `K` | ホバー情報 (LSP) |
| `gp` / `gn` | Quickfix 前/次 |
| `gc` | Quickfix を閉じる |
| `ww` / `wh` / `wj` / `wk` / `wl` | ウィンドウ移動 |
| `-` | ウィンドウ選択 (choosewin) |
| `n` / `N` / `*` / `#` | 検索（中央表示） |
| `ga` | Easy Align |
| `:MRU` | 最近開いたファイル一覧 |

### lua/config/autocmds.lua

自動コマンド定義:
- QuickFix の自動オープン（grep後）
- 改行時の自動コメント無効化
- JSON ファイルのパフォーマンス最適化
- ファイルタイプ別インデント設定（JS/TS は2スペース）
- カーソルラインの制御（アクティブウィンドウのみ表示）
- Fugitive 画面のキーマッピング

### lua/config/colorscheme.lua

カラースキーム設定:
- 元の .gvimrc から移植したカスタムライトテーマ（デフォルト）
- 複数のカラースキームに対応

**コマンド:**
- `:ColorSchemeCustom` - カスタムテーマに切り替え
- `:ColorSchemeSelect` - カラースキーム選択メニュー

### lua/plugins/init.lua

プラグイン定義（lazy.nvim 形式）:

| カテゴリ | プラグイン | 説明 |
|----------|------------|------|
| **カラースキーム** | gruvbox, tokyonight, etc. | 各種テーマ |
| **Git** | vim-fugitive | Git 操作 |
| | gitsigns.nvim | 差分表示（行単位） |
| | diffview.nvim | 差分ビューア |
| **検索** | telescope.nvim | ファジーファインダー |
| **移動** | hop.nvim | 高速ジャンプ（easymotion代替） |
| | vim-choosewin | ウィンドウ選択 |
| **編集** | nvim-surround | 囲み文字操作 |
| | nvim-autopairs | 括弧自動補完 |
| | Comment.nvim | コメントトグル |
| | vim-easy-align | 整列 |
| | vim-visual-multi | マルチカーソル |
| **表示** | indent-blankline.nvim | インデントガイド |
| | lualine.nvim | ステータスライン |
| | bufferline.nvim | バッファタブ |
| | nvim-treesitter | シンタックスハイライト |
| | treesitter-context | コンテキスト表示 |
| **LSP** | nvim-lspconfig | LSP クライアント |
| | mason.nvim | LSP サーバー管理 |
| **補完** | nvim-cmp | 自動補完 |
| | LuaSnip | スニペット |
| **その他** | which-key.nvim | キーバインドヘルプ |
| | emmet-vim | Emmet |
| | vim-quickrun | コード実行 |

## よく使うコマンド

```vim
:Lazy              " プラグイン管理画面
:Mason             " LSP サーバー管理
:Telescope         " Telescope コマンド一覧
:MRU               " 最近開いたファイル
:ColorSchemeSelect " カラースキーム変更
```

## LSP サーバー

Mason で自動インストールされる:
- lua_ls (Lua)
- ts_ls (TypeScript/JavaScript)
- intelephense (PHP)
- pyright (Python)
- gopls (Go)

追加するには `:Mason` で管理画面を開く。

## カスタマイズ

### ローカル設定

`~/.config/nvim/lua/config/local.lua` を作成すると自動で読み込まれる。
（gitignore 推奨）

```lua
-- 例: lua/config/local.lua
vim.opt.tabstop = 2
vim.g.some_plugin_option = true
```

### プラグイン追加

`lua/plugins/init.lua` の return テーブルに追加:

```lua
{
  "author/plugin-name",
  config = function()
    -- 設定
  end,
},
```

## 移行元との対応

| Vim (vim-plug) | Neovim (lazy.nvim) |
|----------------|---------------------|
| vim-lsp | nvim-lspconfig |
| asyncomplete | nvim-cmp |
| vim-easymotion | hop.nvim |
| vim-gitgutter | gitsigns.nvim |
| fzf.vim | telescope.nvim |
| vim-surround | nvim-surround |
| mru.vim | telescope oldfiles (`:MRU`) |
