"ターミナルが24ビットカラー（真のカラー）をサポートしているか確認します。
if has("termguicolors")
    set termguicolors
endif

" 環境変数 $TERM の値を取得
if $TERM =~# 'screen'
  " tmux内で実行されている場合の設定
  " tmuxだとこれを指定しないとハイライトのようになってしまう(イタリックがうまく機能していない
  let g:komau_italic=0
endif

"""""""""""""
" general
"""""""""""""
"set mapleader = "\<Space>"
"colorscheme noirblaze
"colorscheme sonokai
"colorscheme darkblue

"colorscheme aurora
"colorscheme monokai_pro

"colorscheme hatsunemiku
"colorscheme molokayo
"colorscheme sublimemonokai
"colorscheme molokai
"colorscheme yui
"colorscheme vim-monokai-tasty
"colorscheme substrata

"let g:monochrome_italic_comments = 1
"colorscheme monochrome
"colorscheme vim-monokai-tasty

"colorscheme blue 
"colorscheme lunaperche 
"colorscheme blossom
"colorscheme wellsokai
"colorscheme true-monochrome 
"colorscheme sonokai 
"colorscheme xcodehc 
"colorscheme codedark 
"colorscheme flesh-and-blood
"colorscheme komau " tmuxで色が崩れる
"colorscheme candle-grey-transparent " サジェストがわからなくなる

"colorscheme monochrome 

"colorscheme shirotelin 

"colorscheme komau  "tmuxの環境だと表示がおかしくなる？
"colorscheme zellner 
"colorscheme monokai-phoenix 
"colorscheme plain 

"let g:accent_colour = 'red'
"colorscheme accent
"colorscheme yui
"colorscheme yui_dark
"colorscheme yui_dark
"let g:yui_comments = 'fade'
"set background=light
 "colorscheme fairyfloss

"colorscheme quiet
"colorscheme mountaineer-light
"colorscheme komau
"set background=dark
"set background=light

"set background=light
"let g:accent_darken = 1
"let g:accent_auto_cwd_colour = 1

"colorscheme sonokai 
"set background=dark
"set background=light

"colorscheme mountaineer-light

"colorscheme afterglow
"colorscheme afterglow

"colorscheme komau
"set background=light
"set background=dark
"colorscheme blossom


"colorscheme afterglow

"colorscheme firewatch
"colorscheme moonfly

"colorscheme sonokai 
"colorscheme mountaineer-grey 
"colorscheme win9xblueback 
"colorscheme blue 
"colorscheme lunaperche 

"colorscheme redish 
"colorscheme molokai 
"colorscheme firewatch

"colorscheme snazzy
"colorscheme punk
"colorscheme monochrome 
"colorscheme sonokai 

"colorscheme plain 

"colorscheme monokai-phoenix
" colorscheme acme 

"set t_Co=256
"colorscheme Monokai-Refined
"colorscheme stereokai 

"set background=light
"set background=dark

"term.appだとvimの色が壊れる
"set termguicolors

" macvimで日本語入力の不備対応 https://loumo.jp/wp/archive/20160914120009/
set imdisable

set tabstop=4
set shiftwidth=4
set expandtab
" コーディングの際には不要だがペアプロやエラーの箇所に飛ぶ際にあったほうがよい "
set nu
" 最近特に行数で指摘受けてないので
"set nonumber 
" set relativenumber
set nowrap " 折返し無効
set showmatch
set matchtime=1
" http://blog.remora.cx/2013/06/source-in-80-columns.html
" set colorcolumn=80
set nowrap
" TODO
" mouseで有効にしているモードだとクリップボードがうまく共有されない
" ただしmouseをセットしているモードだとマウスからスクロールができる
" set mouse=v
"set mouse=nv
set mouse=a

" ブックマークした先にジャンプすると構文シンタックスが消える https://github.com/vim-jp/issues/issues/1076
"set redrawtime=10000

" mark情報は、viminfoを使わないとvimの終了と同時に失われます。
" https://qiita.com/syui/items/442fd0905a1f2005c10e
"set viminfo='50,\"1000,:0,n~/.vim/viminfo

" クリップボード共有
"set clipboard=unnamed,autoselect
" ヴィジュアルモードを使った置換貼付け
" https://qiita.com/hikaruna/items/83c1220eede810bee492
set clipboard=unnamed

" 検索時の大文字小文字無視
set ignorecase 

"set nocursorline
set nocursorcolumn

set incsearch
set hlsearch

"検索時に最後まで行ったら最初に戻らない ctrlsfの際にループしたくないため
" -> 困るケースのほうが多いのでいったんコメントアウト
"set nowrapscan 

syntax on
"syntax off

"syntax match Error /if/

"---------------------------------------------------------------------------
" ステータスラインの表示
"---------------------------------------------------------------------------
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
"set laststatus=0
"set laststatus=2
" start---------- 最近あまり参照しないので、試験的にコメントアウト
"" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
"set laststatus=2
"" パス/ファイル名
""set statusline=%F
"" ファイル名
""https://stackoverflow.com/questions/13783839/vim-way-to-only-show-the-current-files-name-in-the-statusline
""set statusline=%t
"set statusline=%f
"
"
"" https://stackoverflow.com/questions/19614665/how-to-make-vim-indicate-the-file-has-changed-since-last-save
"set statusline+=\ [%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]
"
"" https://qiita.com/tashua314/items/101f1bec368c75a90251
"" 現在行数/全行数
"set statusline+=[LOW=%l/%L]
"
"" https://blog.ruedap.com/2011/07/12/vim-statusline-git-branch-name
"set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
"
"" 作業時間
"" gtm https://github.com/git-time-metric/gtm/blob/master/README.md
""set statusline+=%{exists('*GTMStatusline')?'['.GTMStatusline().']':''}
" end---------- 最近あまり参照しないので、試験的にコメントアウト

"-------------------------------------------------------------------------------
" エンコーディング設定
"---------------------------------------------------------------------------
set encoding=utf-8

set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
" itemの設定も必要 https://qiita.com/macoshita/items/f7e0f5eda02f45736b52
" メモ vim-deviconsが崩れる
" set ambiwidth=double " □や○文字が崩れる問題を解決
" itermの設定が優先される
" set guifont=Ricty_Diminished:h14 " フォント
"set guifont=Hack_Nerd_Font:h14 " フォント
"set guifont=Hack_Nerd_Font:h2 " フォント
set guifont=Hack_Nerd_Font:h14 " フォント


set list  " 不可視文字を表示する
set listchars=tab:≫-,trail:-,extends:≫,precedes:≪,nbsp:%,eol:?


"-------------------------------------------------------------------------------
" 編集
"---------------------------------------------------------------------------
set infercase      " 補完の際の大文字小文字の区別しない
set cmdheight=2    " メッセージ表示欄を2行確保
set tabstop=4      " 画面上でタブ文字が占める幅
" set autoindento  " 改行時に前の行のインデントを継続する
set expandtab      "タブ入力を複数の空白入力に置き換える
set shiftwidth=4   " 自動インデントでずれる幅
set nowrap         " 長い行を折り返さない
set tw=0           " 自動改行オフ http://kaworu.jpn.org/kaworu/2007-07-29-1.php
set confirm        " 保存されていないファイルがあるときは終了前に保存確認
" Required for operations modifying multiple buffers like rename.
set hidden         " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread       " 外部でファイルに変更がされた場合は読みなおす
set nobackup       " ファイル保存時にバックアップファイルを作らない
set noswapfile     " ファイル編集中にスワップファイルを作らない
" vimでbackspaceキーで削除できるように
set backspace=indent,eol,start

" コメントとvisualモードが見づらいので
" http://shocrunch.hatenablog.com/entry/2015/01/15/234555
"hi Comment ctermfg=102
"hi Comment ctermfg=202

"hi Visual  ctermbg=236
"hi Comment ctermfg=white
"hi Comment ctermfg=Yellow

"https://qiita.com/akira-hamada/items/eb46ef02fabfdd418449
" Vimでキーワードにマッチした数を表示(vim 8.1以降
set shortmess-=S
" 補完候補がステータスメニュー上に一覧表示 https://qiita.com/lighttiger2505/items/2f6e4686b8db051378c0
set wildmenu

" 検索をファイルの先頭へループしない
set nowrapscan

"タブバー非表示
"set showtabline=0

"termianl.appでうまく動かない
"別環境でも動かないかもしれないので一旦コメントアウト
"if (has("termguicolors"))
" set termguicolors
"endif


"https://qiita.com/Qiita_Sui/items/a9f77a7310d1e53a95b1
" カレントタブをハイライト
hi TabLineSel ctermbg=1

" タブにフルパスでなく、ファイル名のみを表示する
set tabline=%!MyTabLine()

" 常にタブラインを表示
set showtabline=2

function! MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " ラベルは MyTabLabel() で作成する
        let my_tab_label = '%{MyTabLabel(' . (i + 1) . ')}'
        " 強調表示グループの選択
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        " タブ番号 : [ファイル名] のフォーマットになるように設定
        "let s .= (i + 1) . ':[' . my_tab_label .']|'
        "let s .= (i + 1) . ':' . my_tab_label .'|'
        let s .= (i + 1) .'|'
    endfor

    " 最後のタブページの後は TabLineFill で埋め、タブページ番号をリセットする
    let s .= '%#TabLineFill#%T'

    return s
endfunction

function! MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    return fnamemodify(bufname(buflist[winnr - 1]), ":t")
endfunction


" https://inari111.hatenablog.com/entry/2014/10/22/222051
" カレント行ハイライト
"set cursorline
"set nocursorline
" アンダーラインを引く(color terminal)
"highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"highlight CursorLine cterm=underline ctermbg=blue guibg=NONE
"highlight CursorLine cterm=underline guibg=NONE
" アンダーラインを引く(gui)
"highlight CursorLine gui=underline guifg=NONE guibg=NONE

highlight CursorLine cterm=underline guibg=NONE

" for in container
set re=1

set ttyfast
" カーソルラインの背景色が消える原因の可能性があるので、いったんコメントアウト
"set lazyredraw  

" windowを分割した際の境界線を目立たなくする
"highlight VertSplit cterm=NONE ctermfg=grey ctermbg=NONE guifg=grey guibg=NONE
highlight VertSplit cterm=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE
set fillchars=

let &t_SI = "\e[6 q"   " insertモード: Iビーム
let &t_EI = "\e[2 q"   " ノーマルモード: ブロック


set background=light
  hi clear
  if exists("syntax_on")
    syntax reset
  endif

  " =========================================================
  " UI
  " =========================================================
  hi Normal       guifg=#2F2F3A guibg=#F7F7FB
  hi LineNr       guifg=#7A7A96 guibg=#ECECF3
  hi CursorLineNr guifg=#1F1F28 guibg=#ECECF3 gui=bold  " boldを追加
  hi CursorLine   guibg=#ECECF3
  hi VertSplit    guifg=#D8D1F0 guibg=#ECECF3

  hi StatusLine   guifg=#1F1F28 guibg=#D8D1F0
  hi StatusLineNC guifg=#7A7A96 guibg=#ECECF3

  hi Visual       guibg=#D8D1F0
  hi Search       guifg=#1F1F28 guibg=#C4BDD8

  " =========================================================
  " Base Syntax (コントラスト強化)
  " =========================================================
  hi Comment      guifg=#5A5A72 gui=italic       " 濃くした（元: #6F6F8A）
  hi Constant     guifg=#8A7FC4                  " 濃くした（元: #9F95D8）
  hi String       guifg=#9A91CC                  " 濃くした（元: #B1A8E2）
  hi Number       guifg=#8A7FC4                  " 濃くした（元: #9F95D8）

  hi Identifier   guifg=#2F2F3A
  hi Function     guifg=#1F1F28 gui=bold

  hi Keyword      guifg=#7A70B4 gui=bold         " 濃くした（元: #8E84C8）
  hi Statement    guifg=#7A70B4                  " 濃くした（元: #8E84C8）
  hi Type         guifg=#7A9BC4                  " 濃くした（元: #BFD2EA）

  " =========================================================
  " Diagnostics / Messages
  " =========================================================
  hi Error        guifg=#F7F7FB guibg=#E8B7C5
  hi WarningMsg   guifg=#D4879C                  " 濃くした（元: #E8B7C5）
  hi Todo         guifg=#1F1F28 guibg=#E8B7C5 gui=bold

  " =========================================================
  " PHP specific (IMPORTANT)
  " =========================================================
  hi phpStructure   guifg=#7A70B4 gui=bold       " 濃くした（元: #8E84C8）
  hi phpClass       guifg=#7A70B4                " 濃くした（元: #8E84C8）
  hi phpType        guifg=#8A7FC4                " 濃くした（元: #9F95D8）

  hi phpIdentifier  guifg=#2F2F3A
  hi phpVarSelector guifg=#2F2F3A
  hi phpMethodsVar  guifg=#1F1F28

  " =========================================================
  " Additional highlights for better visibility
  " =========================================================
  hi Special      guifg=#7A70B4
  hi Delimiter    guifg=#5A5A72
  hi Operator     guifg=#5A5A72
  hi PreProc      guifg=#7A70B4

  " Popup menu (autocomplete)
  hi Pmenu        guifg=#2F2F3A guibg=#ECECF3
  hi PmenuSel     guifg=#1F1F28 guibg=#D8D1F0 gui=bold

  " =========================================================
  " End of colorscheme
  " =========================================================



" カーソルラインを見やすく
set cursorline
hi CursorLine ctermbg=255 guibg=#E8E0F5
hi CursorLineNr cterm=bold gui=bold

nnoremap <silent> <C-l> :nohlsearch<CR>:set cursorline!<CR>:set cursorline!<CR><C-l>


" --- if, else, for, while などの色を強制的に黒の太字にする ---
hi! Conditional guifg=#1F1F28 ctermfg=black gui=bold cterm=bold
hi! Repeat      guifg=#1F1F28 ctermfg=black gui=bold cterm=bold

" --- return, break などの色を強制的に黒の太字にする ---
hi! Statement   guifg=#1F1F28 ctermfg=black gui=bold cterm=bold

" --- phpの制御構文（if, foreachなど）も個別に黒へ ---
hi! phpConditional guifg=#1F1F28 ctermfg=black gui=bold cterm=bold
hi! phpRepeat       guifg=#1F1F28 ctermfg=black gui=bold cterm=bold
hi! phpStatement    guifg=#1F1F28 ctermfg=black gui=bold cterm=bold



" =========================================================
" Diff / Fugitive (Light Theme Optimization)
" =========================================================
" 追加 (緑系): 背景を薄い緑に、文字は少し濃い緑で読みやすく
"hi DiffAdd      guifg=#2D5D2D guibg=#E6F5E9 gui=none
hi DiffAdd   guifg=#24598F guibg=#EAF2FF gui=none
" 削除 (赤系): 背景を薄いピンクに、文字は少し濃い赤で読みやすく
hi DiffDelete   guifg=#9C3E3E guibg=#FBE9EB gui=none
" 変更 (青系): ご要望の「青っぽさ」。GitHub Light風の爽やかな青
hi DiffChange   guifg=#24598F guibg=#EAF2FF gui=none
" 変更箇所の強調 (濃い青): 変更された文字そのものを強調
hi DiffText     guifg=#1F1F28 guibg=#C7DBFF gui=bold

" Fugitiveのインライン差分（> で展開した時）にも適用
hi link diffAdded   DiffAdd
hi link diffRemoved DiffDelete
hi link diffChanged DiffChange

" 削除行の '-' 自体を見やすく
hi diffFile       guifg=#7A70B4
hi diffNewFile    guifg=#2D5D2D
hi diffLine       guifg=#7A7A96
