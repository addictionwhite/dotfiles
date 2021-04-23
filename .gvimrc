


"""""""""""""
" general
"""""""""""""
"set mapleader = "\<Space>"
"colorscheme monokai_pro 
"colorscheme monokai
"colorscheme  typewriter-night
"colorscheme plain

"colorscheme typewriter

"colorscheme sonokai  " コメントのビジュアル選択が見づらい
"colorscheme vim-monokai-tasty
"colorscheme wellsokai
"colorscheme xcodewwdc
colorscheme molokai


"colorscheme spaceduck
"コメントの色を変更 https://www.366service.com/jp/qa/62a28ff7365e609d7518149a1df4a0e7
"hi Comment guifg=#ABCDEF
"hi Comment guifg=#ABCDEF

"set background=light
"colorscheme toast

" term.appだとvimの色が壊れる
"set termguicolors

" macvimで日本語入力の不備対応 https://loumo.jp/wp/archive/20160914120009/
set imdisable

set tabstop=4
set shiftwidth=4
set expandtab
" コーディングの際には不要だがペアプロやエラーの箇所に飛ぶ際にあったほうがよい "
"set number
" 最近特に行数で指摘受けてないので
set nonumber 
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
set redrawtime=10000

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

set nocursorline
set nocursorcolumn

set incsearch
set hlsearch

"検索時に最後まで行ったら最初に戻らない ctrlsfの際にループしたくないため
" -> 困るケースのほうが多いのでいったんコメントアウト
"set nowrapscan 

syntax on
"---------------------------------------------------------------------------
" ステータスラインの表示
"---------------------------------------------------------------------------
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
" ファイル名表示
set statusline=%F
" https://stackoverflow.com/questions/19614665/how-to-make-vim-indicate-the-file-has-changed-since-last-save
set statusline+=\ [%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]
" https://qiita.com/tashua314/items/101f1bec368c75a90251
" 現在行数/全行数
set statusline+=[LOW=%l/%L]

" 作業時間
" gtm https://github.com/git-time-metric/gtm/blob/master/README.md
set statusline+=%{exists('*GTMStatusline')?'['.GTMStatusline().']':''}

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
" set listchars=tab:≫-,trail:-,extends:≫,precedes:≪,nbsp:%,eol:?


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
hi Visual  ctermbg=236

"hi Comment ctermfg=white


"https://qiita.com/akira-hamada/items/eb46ef02fabfdd418449
" Vimでキーワードにマッチした数を表示(vim 8.1以降
set shortmess-=S
" 補完候補がステータスメニュー上に一覧表示 https://qiita.com/lighttiger2505/items/2f6e4686b8db051378c0
set wildmenu



" 検索をファイルの先頭へループしない
set nowrapscan



"https://github.com/74th/vscode-monokaicharcoal/blob/master/themes/Monokai-Charcoal.vim


let g:molokai_original = 1
let g:rehash256 = 1
