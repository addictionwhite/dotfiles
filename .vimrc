
autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost *ag* cwindow


"-------- vim-plug START --------
" TODO コメントアウトしているもの消す(過去のものはgit logでsearchできるようにする）

call plug#begin('~/.vim/plugged')

" color
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'doums/darcula'
Plug 'NLKNguyen/papercolor-theme'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sts10/vim-pink-moon'
Plug 'phanviet/vim-monokai-pro'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'nightsense/snow'
" Plug 'cormacrelf/vim-colors-github'
Plug 'jdkanani/vim-material-theme'
Plug 'reedes/vim-colors-pencil'
Plug 'cocopon/iceberg.vim'
"Plug 'sickill/vim-monokai', { 'as': 'vim-monokai_sickill' }
Plug 'sainnhe/vim-color-forest-night'
Plug 'Rigellute/rigel'
Plug 'hauleth/blame.vim'
"Plug 'crusoexia/vim-monokai'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'w0ng/vim-hybrid'
Plug 'sainnhe/sonokai'
Plug 'jsit/toast.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'pineapplegiant/spaceduck'
Plug 'andreypopp/vim-colors-plain'
Plug 'plan9-for-vimspace/acme-colors'
Plug 'axvr/photon.vim'
Plug 'A/vim-trash-polka'
Plug 'logico/typewriter'
Plug 'rakr/vim-two-firewatch'
Plug 'wellsjo/wellsokai.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'ntk148v/komau.vim' " Vim-plug
Plug 'ryanpcmcquen/true-monochrome_vim'
Plug 'zaki/zazen'
Plug 'aditya-azad/candle-grey'

Plug 'sainnhe/edge'
Plug 'bluz71/vim-moonfly-colors'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'arcticicestudio/nord-vim'
"Plug 'colepeters/spacemacs-theme.vim'
"Plug 'koron/vim-monochromenote'
Plug 'crusoexia/vim-dracula'
Plug 'Rigellute/shades-of-purple.vim'
"Plug 'ray-x/aurora'
"Plug 'cseelus/vim-colors-lucid'
Plug 'fenetikm/falcon'
Plug 'yasukotelin/shirotelin'
Plug '4513ECHO/vim-colors-hatsunemiku'
Plug 'tobi-wan-kenobi/zengarden'
Plug 'davidbachmann/vim-punk-colorscheme'
Plug 'reewr/vim-monokai-phoenix'

Plug 'ronwoch/hotline-vim'
Plug 'blackbirdtheme/vim'
Plug 'ErichDonGubler/vim-sublime-monokai'

Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plug 'koron/vim-monochromenote'
Plug 'connorholyday/vim-snazzy'
Plug 'yuttie/sublimetext-spacegray.vim'
Plug 'morhetz/gruvbox'
Plug 'arzg/vim-substrata'

Plug 'fxn/vim-monochrome'
Plug 'gummesson/stereokai.vim'
Plug 'zekzekus/menguless'
Plug 'sainttttt/flesh-and-blood'
Plug 'mrsafalpiya/sp-plain-vim'
Plug 'rayes0/blossom.vim'
Plug 'hossein-lap/vim-lupper'
Plug 'josebalius/vim-light-chromeclipse'
Plug 'bluz71/vim-nightfly-colors'
Plug 'owickstrom/vim-colors-paramount'
Plug 'TheNiteCoder/mountaineer.vim'
Plug 'vim-scripts/win9xblueback.vim'

"Plug 'vim-scripts/aiseered.vim' , { 'as': 'zzz' } "動かない
Plug 'vim-scripts/aiseered.vim'  "動かない
Plug 'aparaatti/redish.vim' "動かない
Plug 'erizocosmico/vim-firewatch'
Plug 'tomasiser/vim-code-dark'
"Plug 'ErichDonGubler/vim-sublime-monokai'

"エラーになる？
"Plug 'rayes0/blossom.vim'
Plug 'n1ghtmare/noirblaze-vim'
Plug 'ingram1107/moneokai'
Plug 'dterei/VimCobaltColourScheme'
Plug 'therubymug/vim-pyte'
"Plug 'thenewvu/vim-colors-blueprint'
Plug 'cideM/yui'
"Plug 'prurigro/darkcloud-vimconfig'
Plug 'jaromero/vim-monokai-refined'
Plug 'while1eq1/vim-monokai-black'
Plug 'danilo-augusto/vim-afterglow'
Plug 'Badacadabra/vim-archery'

" preview スクロールしているとたびたびエラーになる?
Plug 'mnishz/colorscheme-preview.vim'

" 編集
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-repeat' "vim-macro-repeatと同等
Plug 'jacobchrismarsh/vim-macro-repeat'
Plug 'Townk/vim-autoclose'
Plug 'w0rp/ale'
Plug 'pbrisbin/vim-mkdir'
Plug 'mg979/vim-visual-multi'
"Plug 'bun913/min-todo.vim'
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-easy-align'

" TODO マークダウン編集不要そうなら消す
" マークダウンのプレビューに必要
Plug 'tpope/vim-markdown'
Plug 'kannokanno/previm'
"Plug 'tyru/open-browser.vim' " 既に定義されているため
Plug 'AndrewRadev/switch.vim'

Plug 'junegunn/vim-easy-align'

"VCS 
Plug 'tpope/vim-fugitive'
Plug 'aacunningham/vim-fuzzy-stash'
"Plug 'tommcdo/vim-fugitive-blame-ext'
"Plug 'vim-scripts/vcscommand.vim' " SVN使うときには必要(今使用してないので外す）
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'iberianpig/tig-explorer.vim'
Plug 'lambdalisue/gina.vim'

" 表示
Plug 'simeji/winresizer' "ウィンドウサイズ変更
Plug 'Yggdroot/indentLine'
Plug 'haya14busa/incsearch.vim' " 検索中の文字列をハイライト
Plug 'elzr/vim-json' 
Plug 't9md/vim-quickhl' " 指定の単語をハイライト
"Plug 'pacha/vem-tabline'
Plug 'mechatroner/rainbow_csv'
Plug 'AndrewRadev/linediff.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'vimplugin/project.vim' "TODO: 不要そうなら消す

Plug 'pseewald/vim-anyfold'

Plug 'liuchengxu/vim-which-key'
"Plug 'chrisbra/vim-diff-enhanced'

"Plug 'sandeepcr529/Buffet.vim'

"Plug 'jeetsukumaran/vim-buffergator'
"Plug 'bling/vim-bufferline'
"Plug 'itchyny/lightline.vim'
"Plug 'naoty/vim-folcom' " コメントを非表示にする

"Plug 'ronakg/quickr-preview.vim'

" 少しスクロールが遅くなるかも
"Plug 'wellle/context.vim' " インデント内をスクロールする際コンテキストが上に表示される

"Plug 'blueyed/vim-diminactive' " アクティブなウィンドウを見えやすくする
"Plug 'machakann/vim-highlightedyank'

"検索置換
Plug 'dyng/ctrlsf.vim' " Grep like sublime text
Plug 'thinca/vim-qfreplace' " grep 結果を置換
Plug 'fuenor/qfixgrep'
Plug 'osyo-manga/vim-over'
Plug 'kana/vim-operator-user'
" TODO
Plug 'itchyny/vim-cursorword'

" バッファ操作
Plug 'vim-scripts/copypath.vim'
"Plug 'airblade/vim-rooter' " ディレクトリルートへ遷移
Plug 'mattn/vim-findroot'

Plug 'qpkorr/vim-bufkill'
Plug 'markonm/traces.vim'
Plug 'tpope/vim-abolish'
"Plug 'itchyny/thumbnail.vim'
Plug 'mihaifm/bufstop'

" 移動
Plug 'haya14busa/vim-asterisk'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'kshenoy/vim-signature'

Plug 't9md/vim-choosewin'
Plug 'houtsnip/vim-emacscommandline'
Plug 'vim-scripts/mru.vim'
" An always-on highlight for a unique character in every word on a line to help you use f, F and family.
Plug 'unblevable/quick-scope'
Plug 'dstein64/vim-win'

" その他
Plug 'thinca/vim-quickrun'
Plug 'editorconfig/editorconfig-vim'
Plug 'tyru/open-browser-github.vim'
Plug 'tyru/open-browser.vim'

Plug 'skywind3000/asyncrun.vim' "TODO: なにかに依存して使われていなければ不要そう
Plug 'skywind3000/vim-preview' "TODO: 不要そうなら消す

Plug 'mattn/webapi-vim'

Plug 'reireias/vim-cheatsheet'
Plug 'itchyny/calendar.vim'
Plug 'vuciv/vim-bujo'  "Todoツール

" Debug
Plug 'sebdah/vim-delve'
Plug 'vim-vdebug/vdebug'

Plug 'pixelneo/vim-python-docstring'


"PHP
" language
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'hail2u/vim-css3-syntax'
Plug 'Rican7/php-doc-modded'

Plug 'docunext/closetag.vim' " 基本はEmmet。補助的に使用したい
Plug 'ap/vim-css-color' " TODO:不要そうなら消す
Plug 'flyinshadow/php_localvarcheck.vim' "PHP未定義変数・未使用変数を表示
Plug 'phpstan/vim-phpstan'

" js "
Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'
Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'maksimr/vim-jsbeautify'
Plug 'mxw/vim-jsx'
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}

" ts "
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'beanworks/vim-phpfmt'
Plug 'tell-k/vim-autopep8'

" #GO
Plug 'ratmav/vim-task'

" #LSP
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'
"Plug 'lighttiger2505/sqls.vim'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'vim-jp/vimdoc-ja'

call plug#end()
"-------- vim-plug END --------


"---------------------------------------------------------------------------
" 外部ファイル読み込み
"---------------------------------------------------------------------------
" 検証用スクリプト
if filereadable(expand($HOME.'/myVimscript.vim'))
  source $HOME/myVimscript.vim
endif

if !has('gui_macvim')
    source $HOME/.gvimrc
endif


"---------------------------------------------------------------------------
" キー設定
"---------------------------------------------------------------------------
let mapleader = "\<Space>"

" easyMotion
" https://github.com/easymotion/vim-easymotion
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)

" 画面全体  s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" nmap s <Plug>(easymotion-s2)

" sublime like grep
nnoremap <leader>sf :CtrlSF -ignoredir "*/logs/*" 

" メモプラグイン
nnoremap <leader>mn :MemoNew<CR>
nnoremap <leader>ml :MemoList<CR>
"nnoremap <leader>mg :MemoGrep<CR>

" Cheatsheet
let g:cheatsheet#cheat_file = '~/dotfiles/vim-cheatsheet.txt'

" プラグイン更新
nnoremap <silent> <leader>pi  :PlugInstall<CR>
nnoremap <silent> <leader>pu  :PlugUpdate<CR>
" .設定ファイルを開く
nnoremap <silent> <leader>ev  :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> ,ev  :<C-u>edit $MYVIMRC<CR>
"nnoremap <silent> <leader>eg  :<C-u>edit $MYGVIMRC<CR>
nnoremap <silent> <leader>eg  :<C-u>edit $HOME/.gvimrc<CR>
nnoremap <silent> <leader>et  :<C-u>edit $HOME/.tigrc<CR>

nnoremap <silent> <leader>el  :<C-u>edit $HOME/.vimrc_local<CR>

" 設定再読み込み
"nnoremap <silent> <leader>vi  :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>vi  :source ~/.vimrc<CR>

"単語を色マーク
nmap <leader>h <Plug>(quickhl-manual-this)
xmap <leader>h <Plug>(quickhl-manual-this)
nmap <leader>H <Plug>(quickhl-manual-reset)
xmap <leader>H <Plug>(quickhl-manual-reset)
"QuickhlManualReset

nnoremap / /\v
nnoremap <ESC><ESC> :nohlsearch<CR>

nnoremap ww <C-w>w
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap wh <C-w>h


" 新規ファイル
nnoremap <silent> ,f  :Files<CR> 
nnoremap <silent> <leader>f  :Files<CR>

nnoremap <silent> ,F  :GFiles?<CR>

" 開いているウィンドウでバッファが開くのが使いやすい
nnoremap <silent> <leader>b  :Bufstop<CR>
nnoremap <silent> <leader>nf :call Nf()<CR>

nmap <silent> gr :LspReferences<CR>
nmap <silent> gd :LspDefinition<CR>
nmap <silent> gh  :LspHover<CR>

"LspReferencesでQuickfixが表示されるため操作を合わせたい
nnoremap gp :cprevious<CR>
nnoremap gn :cnext<CR>
"close quickfix
nnoremap gc :ccl<CR>

" vimのvisualモードで連続でペーストして書き換えられるようにする  http://kaminora.hatenablog.com/entry/2018/04/08/193154
xnoremap p "_dP

" https://qiita.com/hono63/items/853cda6ba4144cf4f4e5
nnoremap cp ve"8d"0p

" Vimで検索を行った際に必ずカーソルを画面中央に持ってくる
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

"---------------------------------------------------------------------------
" 各種プラグインの設定
"---------------------------------------------------------------------------
" ファイル形式別プラグインのロードを有効化するには
" https://vim-jp.org/vimdoc-ja/filetype.html
filetype plugin on

" ---ctrlSF--- 
" pはpreviewと重複する
let g:ctrlsf_mapping = {
    \ "next": "n",
    \ "prev": "N",
    \ }

let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 0
    \}
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }

let g:ctrlsf_position = 'right'

let g:ctrlsf_backend ='ack'


" --easyMotion--
" 検索時、大文字小文字を区別しない
let g:EasyMotion_smartcase = 1

" Jsonのダブルクォーテーション表示 'elzr/vim-json'
" https://qiita.com/karur4n/items/a26007236c59c5fb8735#vim-json-%E5%85%A5%E3%82%8C%E3%82%88%E3%81%86
let g:vim_json_syntax_conceal = 0

" clever-f.vimのmigemo っぽい検索(日本語もfの検索にヒットさせる）https://rhysd.hatenablog.com/entry/2013/09/17/220837
let g:clever_f_use_migemo=1
let g:clever_f_mark_char_color="IncSearch"

" ---gitgutter---
" https://github.com/statico/dotfiles/blob/master/.vim/vimrc
"let g:gitgutter_sign_added = '.'
"let g:gitgutter_sign_modified = '.'
"let g:gitgutter_sign_removed = '.'
highlight GitGutterAdd    guifg=#999999 ctermfg=2
highlight GitGutterChange guifg=#999999 ctermfg=3
highlight GitGutterDelete guifg=#999999 ctermfg=1

"let g:gitgutter_sign_added = '|'
"let g:gitgutter_sign_modified = '|'
"let g:gitgutter_sign_removed = '|'
""let g:gitgutter_sign_modified_removed = '∙'

" https://wonderwall.hatenablog.com/entry/2016/03/26/211710
" https://h2plus.biz/hiromitsu/entry/674
"highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=9
"highlight GitGutterChangeDelete ctermfg=4


" Rican7/php-doc-modded
" https://github.com/Rican7/php-doc-modded/blob/master/plugin/php-doc.vim
let g:pdv_cfg_autoEndFunction = 0

let g:pdv_cfg_annotation_Package = 0
let g:pdv_cfg_annotation_Version = 0
let g:pdv_cfg_annotation_Author = 0
let g:pdv_cfg_annotation_Copyright = 0
let g:pdv_cfg_annotation_License = 0


" ---fzf---
let g:fzf_layout = { 'down': '~70%' }
" fzfからファイルにジャンプできるようにする
let g:fzf_buffers_jump = 1
let g:fzf_preview_rate = 0.9
let g:fzf_command_prefix = 'Fzf'


" ファイル一覧を出すときにプレビュー表示
" reference https://kashewnuts.github.io/2018/12/02/bp_advent_calender.html
command! -bang -nargs=? -complete=dir Files
\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" https://blog.fakiyer.com/entry/2017/08/06/222936
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction


if executable('buffers')
    command! -bang -nargs=* Buffers
        \ call fzf#vim#buffers(
        \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
        \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'up:50%:wrap'))
endif


" --quickr-preview.vim--
let g:quickr_preview_keymaps = 0
nnoremap <silent> <leader>p <plug>(quickr_preview)
let g:quickr_preview_on_cursor = 1


" --phpmd--
"https://yuzuemon.hatenablog.com/category/PHP
" phpmdの警告一旦消す
let g:syntastic_php_phpmd_post_args=''

" --vim-terraform--
let g:terraform_fmt_on_save = 1

" --winresizer--
let g:winresizer_gui_enable=1

" ---lsp---
let g:lsp_diagnostics_enabled = 0

" --settings--
map *  <Plug>(asterisk-z*)


" -- choosewin
nmap - <Plug>(choosewin)

"---------------------------------------------------------------------------
" その他設定
"---------------------------------------------------------------------------

" 改行時の自動コメントアウト無効 http://www.lesstep.jp/step_on_board/linux/381/
autocmd FileType * setlocal formatoptions-=r
autocmd FileType * setlocal formatoptions-=o


" https://note.com/yasukotelin/n/na87dc604e042
" 補完表示時のEnterで改行をしない
set completeopt=menuone,noinsert
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"


" vimで長い行を持つファイルを開いた時に重くならないようにする
augroup vimrc-highlight
  au!
  au Syntax json if 1000 < col('$') | syntax off | endif
augroup END
set synmaxcol=320


" 折りたたみ有効 https://qiita.com/jiro4989/items/12a41fb58cc42287092f
au FileType vim setlocal foldmethod=marker

" モードでカーソルの形状を変える https://blog.delphinus.dev/2012/10/spotlight-cursor-line.html
let &t_SI = "\e]50;CursorShape=1\x7"
let &t_EI = "\e]50;CursorShape=0\x7"


"cloudformation記述するときのための設定 https://qiita.com/yasuhiroki/items/f4a2871010928514d433
au BufRead,BufNewFile *.template.yaml set ft=cloudformation.yaml
au BufRead,BufNewFile *.yaml set ft=cloudformation.yaml


" vimgrepの差分を見やすくする https://qiita.com/takaakikasai/items/3d4f8a4867364a46dfa3
set diffopt=internal,filler,algorithm:histogram,indent-heuristic


vnoremap z/ <ESC>/\%V
vnoremap z? <ESC>?\%V



" 注意: vdebugの設定は読み込みのタイミングの問題か、.vimrcか$HOME.'/.vimrc_local'に定義しないとうまく動かない
if filereadable(expand($HOME.'/.vimrc_local'))
    source $HOME/.vimrc_local
endif


" 遅い端末を使っている場合は、ステータスメッセージをオフにすることで編集のスピー ドを上げることができます:
" https://vim-jp.org/vimdoc-ja/intro.html
set nosc noru nosm


" マクロを定義して範囲を選択して@{key}でマクロを実行できる
" https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db
" https://github.com/stoeffel/.dotfiles/blob/master/vim/visual-at.vim
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction


" たまに遅くなっている原因？検証
let g:phpfmt_autosave = 0

" 実験
" 遅い端末を使っている場合は、ステータスメッセージをオフにすることで編集のスピー ドを上げることができます:
" https://vim-jp.org/vimdoc-ja/intro.html
set nosc noru nosm

imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" If you want to use snippet for multiple filetypes, you can `g:vsip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']


" https://qiita.com/horiem/items/5f503af679d8aed24dd5
" vim の :! コマンドでも .bashrc のエイリアス設定を有効にする
let $BASH_ENV = "~/.bash_aliases"


let g:VM_mouse_mappings = 1
"nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
"nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Cursor)
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)


" https://vim-jp.org/vim-users-jp/2009/08/31/Hack-65.html
" : 選択範囲を検索する
vnoremap z/ <ESC>/\%V
vnoremap z? <ESC>?\%V


"https://vim-jp.org/vimdoc-ja/cmdline.html#filename-modifiers
let g:bufferline_fname_mod = ':.'

augroup EchoFilePath
  autocmd WinEnter * execute "normal! 1\<C-g>"
augroup END

" https://codehero.jp/vim/9065941/how-can-i-change-vim-status-line-color
hi StatusLine ctermbg=white ctermfg=black


" https://github.com/junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"https://qiita.com/locona_0810/items/5644af52da2469adce1a
if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtabの略
  autocmd FileType ts        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=2 sts=2 ts=2 et
endif

set clipboard=unnamed "ヤンクした時に自動でクリップボードにコピー(autoselectを指定するとvモードの置換連続ペーストができない)


"highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline
"highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=155 cterm=underline

" コメントアウトの色変更
" https://blog.trippyboy.com/2014/centos/vim%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88%E3%82%A2%E3%82%A6%E3%83%88%E3%81%AE%E8%89%B2%E3%81%8C%E8%A6%8B%E3%81%A5%E3%82%89%E3%81%84%E3%81%AA%E3%82%89%E5%A4%89%E6%9B%B4%E3%81%97%E3%81%BE%E3%81%97/
":hi Comment ctermfg=Magenta
":hi Comment ctermfg=LightYellow
":hi Comment ctermfg=hala(60,54%,56%)



" ------------------------
"filetype plugin on
" http://blog.tojiru.net/article/234400966.html
" netrwは常にtree view
let g:netrw_liststyle = 3
" CVSと.で始まるファイルは表示しない
"let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
" https://pc.oreda.net/software/filer/netrw#%E3%82%AA%E3%82%B9%E3%82%B9%E3%83%A1%E8%A8%AD%E5%AE%9A
" ヘッダを非表示にする
let g:netrw_banner=0

"let g:netrw_winsize = 15

" https://issueoverflow.com/2019/11/22/set-vim-netrw-like-nerdtree/
filetype plugin on
""ツリー表示
""表示を変更したい場合は i で切替可能
"let g:netrw_liststyle=3
""上部のバナーを非表示
"" I で toggle 可能
"let g:netrw_banner = 0
""window サイズ
"let g:netrw_winsize = 25
""Netrw で Enter 押下時の挙動設定
"let g:netrw_browse_split = 4
"let g:netrw_alto = 1
"
""Netrw を toggle する関数を設定
""元処理と異なり Vex を呼び出すことで左 window に表示
"let g:NetrwIsOpen=0
"function! ToggleNetrw()
"    if g:NetrwIsOpen
"        let i = bufnr("$")
"        while (i >= 1)
"            if (getbufvar(i, "&filetype") == "netrw")
"                silent exe "bwipeout " . i
"            endif
"            let i-=1
"        endwhile
"        let g:NetrwIsOpen=0
"    else
"        let g:NetrwIsOpen=1
"        silent Vex
"    endif
"endfunction
"
""ショートカットの設定
""= を 2 回連続押下で toggle
"noremap <silent>== :call ToggleNetrw()<CR>


" ---------------------------



let g:findroot_patterns = [
\  '.git/',
\  '.svn/',
\]


"---------------------------------------------------------------------------
" function
"---------------------------------------------------------------------------
" https://qiita.com/t_o_d/items/1475671853e984aef777
" リネーム関数定義
function! RenameCurrentFile()
  let old = expand('%')
  let new = input('新規ファイル名: ', old , 'file')
  if new != '' && new != old
    exec ':saveas ' . new
    exec ':silent !rm ' . old
    redraw!
  endif
endfunction
map <leader>n :call RenameCurrentFile()<cr>


" ウィンドウ一時的に最大化 toggle
" https://qiita.com/grohiro/items/e3dbcc93510bc8c4c812
let g:toggle_window_size = 0
function! ToggleWindowSize()
  if g:toggle_window_size == 1
    exec "normal \<C-w>="
    let g:toggle_window_size = 0
  else
    :resize
    :vertical resize
    let g:toggle_window_size = 1
  endif
endfunction
nnoremap <silent> <Space>w :call ToggleWindowSize()<CR>


" https://gist.github.com/pinzolo/8168337
" 指定のデータをレジスタに登録する
function! s:Clip(data)
  let @*=a:data
  echo "clipped: " . a:data
endfunction


" 現在開いているファイルのパスをレジスタへ
command! -nargs=0 ClipPath call s:Clip(expand('%:p'))
" 現在開いているファイルのファイル名をレジスタへ
command! -nargs=0 ClipFile call s:Clip(expand('%:t'))
" 現在開いているファイルのディレクトリパスをレジスタへ
command! -nargs=0 ClipDir  call s:Clip(expand('%:p:h'))


function! Nf()
    "command! -nargs=0 ClipPath call s:Clip(expand('%:p'))
    let p = expand('%:p:h')
    execute(':e '. p)
    "execute(':Vex '. p)
endfunction

" ,を使うとfが使いづらくなるので別を割り当てる
nnoremap <leader>my :call MyFunc()<CR>
"nnoremap <leader>g :call GitFunc()<CR>
"nnoremap <leader>t :Todo g<CR>
nnoremap <leader>pa :call PhactorFunc()<CR>

"------------
"比較的使うけどキー覚えてないもの
"------------
:function! MyFunc()
    :let lines = [
        \ "Please select a Function",
        \ "1 : PHPDoc生成",
        \ "2 : バッファの差分",
        \ "3 : バッファ差分解除",
        \ "4 : json整形",
        \ "5 : カンマ区切りを改行(カーソルライン対象)",
        \ "6 : Gina Diff",
        \ "7 : Tmp",
        \ ]
    :let choice = inputlist(lines)
    :if choice == 1
        :call PhpDocSingle()
    :elseif choice == 2
        " バッファの差分 https://thinca.hatenablog.com/entry/20130426/1366910837
        :windo diffthis
    :elseif choice == 3
        :diffoff
    :elseif choice == 4
        :%!jq '.'
    :elseif choice == 5
        :s/,/\r,/g
    :elseif choice == 6
        :Gina diff
    :elseif choice == 7
        " wip
        :!ls
    :else
    :endif
:endfunction


:function! PhactorFunc()
    " memo 文字列に.があるとエラーになる？
    :let lines = [
        \ "Please select a Function",
        \ "1 : PhpactorTransform",
        \ "2 : Import all missing classes in the current file",
        \ "3 : Generate a new class",
        \ "4 : Move a class",
        \ ]
    :let choice = inputlist(lines)
    :if choice == 1
        :PhpactorTransform
    :elseif choice == 2
        :PhpactorImportMissingClasses
    :elseif choice == 3
        :PhpactorClassNew
    :elseif choice == 4
        :PhpactorMoveFile
    :else
        :echo "exit"
    :endif
:endfunction

" vモードの置換連続ペースト用
" https://qiita.com/hikaruna/items/83c1220eede810bee492?utm_source=pocket_mylist
function! Put_text_without_override_register()
  let line_len = strlen(getline('.'))
  execute "normal! `>"
  let col_loc = col('.')
  execute 'normal! gv"_x'
  if line_len == col_loc
    execute 'normal! p'
  else 
    execute 'normal! P'
  endif
endfunction
xnoremap <silent> p :call Put_text_without_override_register()<CR>

"---------------------------------------------------------------------------
" note
"---------------------------------------------------------------------------
" ;をあてるとfが使いづらくなるので必要なら別を割り当てる

"https://qiita.com/01en/items/7262593be49de784861d
" note: 先頭は大文字である必要がある
":command Bs BufstopPreview

" ,を使うとfが使いづらくなるので別を割り当てる


" https://github.com/othree/eregex.vim
" For replacement, use :%S// (uppercase S) to trigger perl style regexp.

" :s/, /\r,/g   行をカンマ区切りで改行する

" :%s/^\%([^,]\+,\)\{2}\zs/挿入したい文字列！！！,/ 


" https://github.com/dyng/ctrlsf.vimつかえばgrepとreplaceできる

"Note .gvimrcに配置すると挙動しなかったので.vimrcに配置
" Show pressed keys in VIM normal mode statusline
set showcmd



" 括弧の反対側のハイライトを調節
" https://qiita.com/mochizukikotaro/items/7829ab32e0353d49c185
" ハイライトを消すこと自体は難しそう
" https://vertys.net/vim-highlight-cancel/
hi MatchParen ctermbg=1


"https://liginc.co.jp/436448
nnoremap <Leader>m :<C-u>call EditDailyMemo()<CR>
function! EditDailyMemo()
    let l:daily_memo_dir = '/tmp'
    if isdirectory($DAILY_MEMO_DIR)
        let l:daily_memo_dir = $DAILY_MEMO_DIR
    endif
    let l:memo_dir = l:daily_memo_dir.'/'.strftime('%Y/%m')
    let l:memo_file = l:memo_dir.'/'.strftime('%d').'.txt'
    call mkdir(l:memo_dir, 'p')
    execute "tabnew ".l:memo_file
endfunction


"reference: https://qiita.com/kimurap/items/7058c9fe29f51932b196
"Note: $VIMRUNTIME/syntax/txt.vim
au BufRead,BufNewFile *.txt set filetype=txt
au BufRead,BufNewFile *.php set filetype=php
" wip js

"reference https://www.xmisao.com/2014/03/19/how-to-define-range-specific-command-in-vim.html
function! OpengiGithubFileAlias() range
    echo "firstline: " . a:firstline
    echo "lastline: " . a:lastline
    echo a:lastline . "OpenGithubFile"
    let s:command = a:firstline . ",". a:lastline . "OpenGithubFile"
    execute s:command
    ":a:lastline . "OpenGithubFile"
endfunction

" 範囲指定できるコマンドの定義
command! -range Opg <line1>,<line2>call OpengiGithubFileAlias()



"set clipboard=unnamedplus

" クリップボードに相対パスをコピーする関数
function! CopyRelativePathToClipboard()
    " 現在のバッファのパスを取得
    let filepath = expand('%:p')

    " カレントディレクトリからの相対パスを取得
    let relativepath = fnamemodify(filepath, ":.")

    " 相対パスをクリップボードにコピー
    let @+ = relativepath

    " メッセージを表示
    echom "Relative path copied to clipboard: " . relativepath
endfunction

" キーマッピングを設定（任意のキーに設定してください）
nnoremap <leader>cp :call CopyRelativePathToClipboard()<CR>

" https://qiita.com/halt/items/35bf79bc8f959a15c4f3
" https://hatebu.jp/entry/2017/09/18/223131
" 未定義変数のチェック
let g:php_localvarcheck_enable = 1
let g:php_localvarcheck_global = 0

let g:phpstan_analyse_level = 4


" .vimrc_localで定義
nnoremap <leader>o :call WorkChoice()<CR>
nnoremap <leader>w :w<CR>

nnoremap <leader>ol :call WorkChoice()<CR>

" https://zenn.dev/kawarimidoll/articles/0fe2ef584a56b6
" 最下部のstatuslineを表示しない
set laststatus=0

" ファイル末尾以降の`~`の表示を削除
set fillchars+=eob:\\x20

" 縦区切り線をシンプルに
set fillchars+=vert:│
" 横区切り線をシンプルに
set statusline=─
set fillchars+=stl:─,stlnc:─

" 区切り線のハイライトを抑え気味に
highlight! link StatusLine Comment
highlight! link StatusLineNC Comment
if has('nvim')
  highlight! link WinSeparator Comment
else
  highlight! link VertSplit Comment
endif

" 非アクティブなウィンドウのカーソルラインを消す
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" 固定のファイルを開くショートカット
nnoremap <Leader>of :e ~/mycheat.txt<CR>
" 固定のファイルを閉じるショートカット
"nnoremap <leader>cf :bd ~/settings.txt<cr>




" テンプレートファイルのパスを設定
let g:template_file = expand('~/.vim/templates.txt')

" テンプレートを読み込んでリストに変換
function! LoadTemplates()
    let l:templates = []
    let l:headings = []
    let l:current_template = []

    for l:line in readfile(g:template_file)
        if l:line == ''
            " 空行で区切られたテンプレートをリストに追加
            if !empty(l:current_template)
                call add(l:templates, join(l:current_template, "\n"))
                call add(l:headings, l:current_template[0])
                let l:current_template = []
            endif
        else
            " 現在のテンプレートに行を追加
            call add(l:current_template, l:line)
        endif
    endfor

    " 最後のテンプレートがある場合、それを追加
    if !empty(l:current_template)
        call add(l:templates, join(l:current_template, "\n"))
        call add(l:headings, l:current_template[0])
    endif

    return [l:headings, l:templates]
endfunction

" テンプレートを選択して挿入する関数
function! InsertTemplate()
    " 見出しとテンプレートのロード
    let [l:headings, l:templates] = LoadTemplates()

    " 見出しの選択メニューを表示
    let l:choice = inputlist(['テンプレートを選択してください:'] + l:headings)

    " 有効な選択が行われた場合、そのテンプレートを挿入
    if l:choice > 0 && l:choice <= len(l:templates)
        execute 'normal! o' . l:templates[l:choice - 1]
    else
        echo "無効な選択です"
    endif
endfunction

" キーマッピング (例: <Leader>t でテンプレート選択メニューを呼び出す)
nnoremap <Leader>t :call InsertTemplate()<CR>
