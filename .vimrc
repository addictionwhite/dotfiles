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
Plug 'cormacrelf/vim-colors-github'
Plug 'jdkanani/vim-material-theme'
Plug 'reedes/vim-colors-pencil'
Plug 'cocopon/iceberg.vim'
Plug 'sickill/vim-monokai', { 'as': 'vim-monokai_sickill' }
Plug 'sainnhe/vim-color-forest-night'
Plug 'Rigellute/rigel'
Plug 'hauleth/blame.vim'
Plug 'crusoexia/vim-monokai'
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
Plug 'ray-x/aurora'
"Plug 'cseelus/vim-colors-lucid'
Plug 'fenetikm/falcon'
Plug 'yasukotelin/shirotelin'

Plug 'mnishz/colorscheme-preview.vim'


Plug 'ronwoch/hotline-vim'


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

" TODO マークダウン編集不要そうなら消す
" マークダウンのプレビューに必要
Plug 'tpope/vim-markdown'
Plug 'kannokanno/previm'
"Plug 'tyru/open-browser.vim' " 既に定義されているため
Plug 'AndrewRadev/switch.vim'


Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

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
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/nerd-fonts'
"Plug 'chrisbra/vim-diff-enhanced'

"Plug 'sandeepcr529/Buffet.vim'
" 少し不安定かも
"Plug 'osyo-manga/vim-stripe'

"Plug 'jeetsukumaran/vim-buffergator'
"Plug 'bling/vim-bufferline'
"Plug 'itchyny/lightline.vim'

"検索置換
Plug 'dyng/ctrlsf.vim' " Grep like sublime text
Plug 'thinca/vim-qfreplace' " grep 結果を置換
Plug 'fuenor/qfixgrep'
Plug 'osyo-manga/vim-over'
Plug 'kana/vim-operator-user'
Plug 'itchyny/vim-cursorword'

" バッファ操作
Plug 'vim-scripts/copypath.vim'
Plug 'airblade/vim-rooter' " ディレクトリルートへ遷移
Plug 'qpkorr/vim-bufkill'
Plug 'markonm/traces.vim'
Plug 'tpope/vim-abolish'
Plug 'itchyny/thumbnail.vim'
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

" js "
Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'maksimr/vim-jsbeautify'
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


"let g:lsp_signature_help_enabled = 0


"let mapleader = "\<Space>"
"let mapleader = ","

"---------------------------------------------------------------------------
" キー設定
"---------------------------------------------------------------------------

"terminalモード中ESCでnormal mode
tnoremap <silent> <ESC> <C-\><C-n>
" https://techracho.bpsinc.jp/tsunekawa/2018_09_11/61576
" ターミナルモードでCtrl-t で無名レジスタをペースト
tnoremap <C-T> <C-W>""

" easyMotion
" https://github.com/easymotion/vim-easymotion
" nmap s <Plug>(easymotion-s2)
nmap <silent> <Space>j <Plug>(easymotion-j)
nmap <silent> <Space>k <Plug>(easymotion-k)
"map  <silent>f <Plug>(easymotion-bd-f)
"nmap <silent>f <Plug>(easymotion-overwin-f)
" 画面全体  s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

map <C-j> <Plug>(edgemotion-j)
map <C-k> <Plug>(edgemotion-k)

" sublime like grep
"nnoremap <Space>sf :CtrlSF 
nnoremap <Space>sf :CtrlSF -ignoredir "*/logs/*" 

nmap  -  <Plug>(choosewin)

" バッファ作成
nmap <C-w>n :enew<CR>
" バッファ削除
"nmap ∑      :BD<CR>


nnoremap <silent> <Space>b  :Thumbnail<CR>


" finderで開く
"nnoremap <silent> <Space>op  :! explorer .<CR>
nnoremap <silent> <Space>op  :! open .<CR>


" メモプラグイン
nnoremap <Space>mn :MemoNew<CR>
nnoremap <Space>ml :MemoList<CR>
nnoremap <Space>mg :MemoGrep<CR>


" プラグイン更新
nnoremap <silent> <Space>pi  :PlugInstall<CR>
nnoremap <silent> <Space>pu  :PlugUpdate<CR>
" .設定ファイルを開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
"nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $HOME/.gvimrc<CR>
nnoremap <silent> <Space>et  :<C-u>edit $HOME/.tigrc<CR>


" 設定再読み込み
nnoremap <silent> <Space>vi  :source ~/.config/nvim/init.vim<CR>
" ;をあてるとfが使いづらくなるので必要なら別を割り当てる
"nmap ;s :source ~/myVimscript.vim<CR>


"単語を色マーク
nmap <Space>h <Plug>(quickhl-manual-this)
xmap <Space>h <Plug>(quickhl-manual-this)
nmap <Space>H <Plug>(quickhl-manual-reset)
xmap <Space>H <Plug>(quickhl-manual-reset)

nnoremap / /\v
nnoremap <ESC><ESC> :nohlsearch<CR>

nnoremap ww <C-w>w
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap wh <C-w>h

" 新規ファイル
nnoremap <silent> ,f  :Files<CR> 
"nnoremap <silent> ,f  :GFiles<CR>
nnoremap <silent> ,F  :GFiles?<CR>
"nnoremap <silent> ,b  :BuffersPreview<CR>
"nnoremap <silent> ,b  :FzfBuffers<CR>
" 開いているウィンドウでバッファが開くのが使いやすい
nnoremap <silent> ,b  :Bufstop<CR>

nnoremap <silent> ,m  :MRU<CR>

"nnoremap <silent> ,b  :BufstopPreview<CR>

nnoremap <silent> ,s  :Snippets<CR>
"nnoremap <silent> ,h  :LspHover<CR>

nnoremap <silent> <Space>nf :NERDTreeFind<CR>
nnoremap <silent> <Space>nc :NERDTreeClose<CR>

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


" --easyMotion--
" 検索時、大文字小文字を区別しない
let g:EasyMotion_smartcase = 1


" ---ryanoasis/vim-devicons---
" https://qiita.com/tos-miyake/items/0cb4729c4d6a949bd480
" フォルダアイコンの表示をON
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''


" Jsonのダブルクォーテーション表示 'elzr/vim-json'
" https://qiita.com/karur4n/items/a26007236c59c5fb8735#vim-json-%E5%85%A5%E3%82%8C%E3%82%88%E3%81%86
let g:vim_json_syntax_conceal = 0

" clever-f.vimのmigemo っぽい検索(日本語もfの検索にヒットさせる）https://rhysd.hatenablog.com/entry/2013/09/17/220837
let g:clever_f_use_migemo=1

" ---gitgutter---
" https://github.com/statico/dotfiles/blob/master/.vim/vimrc
"let g:gitgutter_sign_added = '∙'
"let g:gitgutter_sign_modified = '∙'
"let g:gitgutter_sign_removed = '∙'
"let g:gitgutter_sign_modified_removed = '∙'

let g:gitgutter_sign_added = '.'
let g:gitgutter_sign_modified = '.'
let g:gitgutter_sign_removed = '.'
"let g:gitgutter_sign_modified_removed = '∙'



" Rican7/php-doc-modded
" https://github.com/Rican7/php-doc-modded/blob/master/plugin/php-doc.vim
let g:pdv_cfg_autoEndFunction = 0

let g:pdv_cfg_annotation_Package = 0
let g:pdv_cfg_annotation_Version = 0
let g:pdv_cfg_annotation_Author = 0
let g:pdv_cfg_annotation_Copyright = 0
let g:pdv_cfg_annotation_License = 0


" TODO
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
" nmap <Space>p <plug>(quickr_preview)
nnoremap <silent> <Space>p <plug>(quickr_preview)


"--ale--
"let g:ale_linters = {
"      \ 'tsx': ['eslint']
"      \ }


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
"map *   <Plug>(asterisk-*)
map *  <Plug>(asterisk-z*)


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
"---------------------------------------------------------------------------
" function
"---------------------------------------------------------------------------

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


"---------------------------------------------------------------------------
" note
"---------------------------------------------------------------------------

" https://github.com/othree/eregex.vim
" For replacement, use :%S// (uppercase S) to trigger perl style regexp.

" :s/, /\r,/g   行をカンマ区切りで改行する

" :%s/^\%([^,]\+,\)\{2}\zs/挿入したい文字列！！！,/ 

vnoremap z/ <ESC>/\%V
vnoremap z? <ESC>?\%V

filetype plugin on


" 注意: vdebugの設定は読み込みのタイミングの問題か、.vimrcか$HOME.'/.vimrc_local'に定義しないとうまく動かない
if filereadable(expand($HOME.'/.vimrc_local'))
    source $HOME/.vimrc_local
endif


" 実験
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



" ,を使うとfが使いづらくなるので別を割り当てる
nnoremap <Space>my :call MyFunc()<CR>
nnoremap <Space>g :call GitFunc()<CR>
nnoremap <Space>pa :call PhactorFunc()<CR>


"------------
"比較的使うけどキー覚えてないもの
"------------
:function! MyFunc()
    :let lines = [
        \ "Please select a Function",
        \ "1 : PHPDoc生成",
        \ "2 : バッファの差分",
        \ "3 : json整形",
        \ "4 : カンマ区切りを改行(カーソルライン対象)",
        \ "5 : markdown preview",
        \ "6 : Cheat",
        \ "7 : バッファ差分解除",
        \ ]
    :let choice = inputlist(lines)
    :if choice == 1
        :call PhpDocSingle()
    :elseif choice == 2
        " バッファの差分 https://thinca.hatenablog.com/entry/20130426/1366910837
        :windo diffthis
    :elseif choice == 3
        :%!jq '.'
    :elseif choice == 4
        :s/,/\r,/g
    :elseif choice == 5
        :PrevimOpen
    :elseif choice == 6
        :Cheat
    :elseif choice == 7
        :diffoff
    :else
        :echo "exit"
    :endif
:endfunction



"------------
"自分が使用するgit処理のラッパー
"------------
:function! GitFunc()
    :let lines = [
        \ "Please select a Function",
        \ "1 : Gina Diff",
        \ "2 : Gina!! add -p",
        \ "3 : GitGutterUndoHunk",
        \ ]
    :let choice = inputlist(lines)
    :if choice == 1
        :Gina diff
    :elseif choice == 2
        :Gina!! add -p
    :elseif choice == 3
        :GitGutterUndoHunk
    :else
        :echo "exit"
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


:function! MyPython()
    :let lines = [
        \ "Please select a Function",
        \ "1 : Docstring生成",
        \ ]
    :let choice = inputlist(lines)
    :if choice == 1
        :Docstring
    :else
        :echo "exit"
    :endif
:endfunction


" memo
" https://github.com/dyng/ctrlsf.vimつかえばgrepとreplaceできる

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


let g:cheatsheet#cheat_file = '~/dotfiles/vim-cheatsheet.txt'


"https://vim-jp.org/vimdoc-ja/cmdline.html#filename-modifiers
let g:bufferline_fname_mod = ':.'

augroup EchoFilePath
  autocmd WinEnter * execute "normal! 1\<C-g>"
augroup END


"https://qiita.com/01en/items/7262593be49de784861d
" note: 先頭は大文字である必要がある
":command Bs BufstopPreview


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

set clipboard=unnamed "ヤンクした時に自動でクリップボードにコピー(autoselectを指定するとvモードの置換連続ペーストができない)



"let g:buffetdisabledefaultmaps = 1


" https://github.com/osyo-manga/vim-stripe?utm_source=pocket_mylist


"set diffopt=internal,filler,algorithm:histogram,indent-heuristic


" 参考　https://naoty.hatenablog.com/entry/2013/04/28/002926
nnoremap <silent> ,to  :tabe ~/min-todo/todo.md<CR>
" todoリストのon/offを切り替える
nnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>
"nnoremap <silent> ,tt :tabe ~/min-todo/todo.md<CR>
" https://www.softel.co.jp/blogs/tech/archives/4468
nnoremap <silent> ,ti :r! echo "- [ ]"<CR>
nnoremap <silent> ,tc :call ToggleCheckbox()<CR>

"nnoremap <silent> ,ts :r! echo strftime("%Y/%m/%d \()%A\")<CR>
nnoremap <silent> ,ts a<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>


function! ToggleCheckbox()
  let l:line = getline('.')
  if l:line =~ '^\-\s\[\s\]'
    let l:result = substitute(l:line, '^-\s\[\s\]', '- [x]', '')
    call setline('.', l:result)
  elseif l:line =~ '^\-\s\[x\]'
    let l:result = substitute(l:line, '^-\s\[x\]', '- [ ]', '')
    call setline('.', l:result)
  end
endfunction
