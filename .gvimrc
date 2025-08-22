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
"let g:yui_comments = 'fade'
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

"colorscheme apprentice
"colorscheme onehalflight

"colorscheme komau
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
set cursorline
"set nocursorline
" アンダーラインを引く(color terminal)
"highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"highlight CursorLine cterm=underline ctermbg=blue guibg=NONE
highlight CursorLine cterm=underline guibg=NONE
" アンダーラインを引く(gui)
"highlight CursorLine gui=underline guifg=NONE guibg=NONE

" for in container
set re=1

set ttyfast
set lazyredraw

" windowを分割した際の境界線を目立たなくする
"highlight VertSplit cterm=NONE ctermfg=grey ctermbg=NONE guifg=grey guibg=NONE


hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ciphercrystal"

set background=light

  "  "  " 基本背景と文字
hi Normal       guifg=#3a3a4f guibg=#fdfaff
hi CursorLine   guibg=#f2effa
"hi Visual       guibg=#d6c7f5
hi Visual       guibg=#bba4e9
hi LineNr       guifg=#b6aacd guibg=#f4f0fb
hi Comment      guifg=#a89fb3 gui=italic
hi Constant     guifg=#b38fb0
hi String       guifg=#c78ea0
hi Identifier   guifg=#8877aa
hi Function     guifg=#7b70aa gui=bold
hi Statement    guifg=#8564c8 gui=bold
hi Keyword      guifg=#9e75d6 gui=bold
hi Type         guifg=#5e4aa5
hi PreProc      guifg=#aa80c8
hi Number       guifg=#b479bd
hi Operator     guifg=#996cb5
hi Special      guifg=#d09ec7
hi Todo         guifg=#ffffff guibg=#d080d0 gui=bold

" PHP-specific (if using vim-polyglot or php.vim)
hi phpVarSelector     guifg=#3a3a4f
hi phpFunction        guifg=#7b70aa
hi phpIdentifier      guifg=#8564c8
hi phpDefine          guifg=#aa80c8
hi phpRegion          guibg=#f2f0fb

" UI
hi StatusLine   guifg=#4b3c5c guibg=#e9e4f6 gui=bold
hi VertSplit    guifg=#cfc3de guibg=#fdfaff
hi Pmenu        guibg=#ece5f9 guifg=#4b3c5c
hi PmenuSel     guibg=#c6b1e1 guifg=#ffffff
hi Search       guibg=#f9cbff guifg=#4b3c5c
hi IncSearch    guibg=#f3a7ff guifg=#ffffff

" Add----
" 側面（左端・右端・下部など）を背景色に合わせる
hi ColorColumn   guibg=#fbf9ff
hi SignColumn    guibg=#fbf9ff
hi VertSplit     guibg=#fbf9ff guifg=#d4c6e6
hi StatusLine    guibg=#fbf9ff guifg=#4b3c5c
hi MsgArea       guibg=#fbf9ff guifg=#4b3c5c
hi MsgSeparator  guibg=#fbf9ff guifg=#d4c6e6

" Diagnostic (LSPや構文診断系を使用している場合)
hi DiagnosticError             guifg=#d03c8d guibg=#fbf9ff
hi DiagnosticWarn              guifg=#cc9944 guibg=#fbf9ff
hi DiagnosticInfo              guifg=#7777cc guibg=#fbf9ff
hi DiagnosticHint              guifg=#9999bb guibg=#fbf9ff
hi DiagnosticVirtualTextError guifg=#d03c8d guibg=#fbf9ff
hi DiagnosticVirtualTextWarn  guifg=#cc9944 guibg=#fbf9ff
hi DiagnosticVirtualTextInfo  guifg=#7777cc guibg=#fbf9ff
hi DiagnosticVirtualTextHint  guifg=#9999bb guibg=#fbf9ff

hi DiffAdd      guibg=#bfe9f5 guifg=NONE
hi DiffChange   guibg=#fcf7ce guifg=NONE
hi DiffDelete   guibg=#f9cbff guifg=NONE
hi DiffText     guibg=#9999bb guifg=NONE gui=bold


