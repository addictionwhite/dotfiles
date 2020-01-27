autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost *ag* cwindow


"-------- vim-plug START --------
call plug#begin('~/.vim/plugged')

" color
Plug 'dracula/vim', { 'as': 'dracula' }
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
" Plug 'sickill/vim-monokai' vim-monokaiぶつかる asつけたら対応できそう
Plug 'sainnhe/vim-color-forest-night'
Plug 'Rigellute/rigel'
Plug 'hauleth/blame.vim'
Plug 'crusoexia/vim-monokai'
Plug 'sainnhe/vim-color-ice-age'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'w0ng/vim-hybrid'


" 編集
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'Townk/vim-autoclose'
Plug 'w0rp/ale'
Plug 'tpope/vim-eunuch'
" 改行は挿入できない
"Plug 'hlissner/vim-multiedit' 
"Plug 'mg979/vim-visual-multi'
" 他のプラグインとのかねあいがノイズがはいる
"Plug 'vim-scripts/vim-auto-save' 

"VCS 
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'

Plug 'vim-scripts/vcscommand.vim'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'rhysd/committia.vim' " vital.vimに依存
Plug 'vim-jp/vital.vim'  " plugin作成用の関数群
Plug 'gregsexton/gitv', {'on': ['Gitv']}
"Plug 'jreybert/vimagit'
Plug 'rhysd/git-messenger.vim'
Plug 'iberianpig/tig-explorer.vim'
" Plug 'vim-scripts/vim-svngutter'
" Plug 'idanarye/vim-merginal'
" 画面がちらつく
"Plug 'tveskag/nvim-blame-line'

" 表示
Plug 'simeji/winresizer' "ウィンドウサイズ変更
Plug 'Yggdroot/indentLine'
" Plug 'tyru/current-func-info.vim' " 表示している関数名表示 重いのではないかといったん削除(未検証
Plug 'haya14busa/incsearch.vim' " 検索中の文字列をハイライト
Plug 'vim-scripts/vim-signature' " マーク位置の表示
Plug 'elzr/vim-json' 
Plug 't9md/vim-quickhl' " 指定の単語をハイライト
Plug 'myrobo/smart_tabline.vim'
Plug 'mechatroner/rainbow_csv'
Plug 'AndrewRadev/linediff.vim'
"Plug 'kamykn/spelunker.vim' " 重い
" Plug 'jeetsukumaran/vim-buffergator'
Plug 'ryanoasis/vim-devicons'
" ツリー描写遅くなる
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Plug 'thiagoalessio/rainbow_levels.vim'
Plug 'vimplugin/project.vim'
Plug 'scrooloose/nerdtree'
"Plug 'weirongxu/coc-explorer'
"Plug 'ryanoasis/nerd-fonts'

" Plug 'IMOKURI/line-number-interval.nvim' " 重い?
"Plug 'mkitt/tabline.vim'
"Plug 'itchyny/lightline.vim'

"Plug 'zefei/vim-wintabs'
"Plug 'bagrat/vim-buffet'

"検索置換
Plug 'dyng/ctrlsf.vim' " Grep like sublime text
Plug 'thinca/vim-qfreplace' " grep 結果を置換
"Plug 'mileszs/ack.vim'
Plug 'fuenor/qfixgrep'
Plug 'osyo-manga/vim-over'
Plug 'wsdjeg/FlyGrep.vim'
" Plug 'kana/vim-operator-replace'
Plug 'kana/vim-operator-user'
Plug 'othree/eregex.vim'

" バッファ操作
Plug 'vim-scripts/copypath.vim'
Plug 'airblade/vim-rooter' " ディレクトリルートへ遷移
Plug 'qpkorr/vim-bufkill'
"Plug 'troydm/easybuffer.vim'
Plug 'jlanzarotta/bufexplorer'
" Plug 'vim-scripts/BufOnly.vim'
" Plug 'rbgrouleff/bclose.vim'
" 重い？カーソル移動が鈍る
"Plug 'mg979/vim-xtabline'
" Plug 'vim-scripts/Changed'

" 移動
Plug 'haya14busa/vim-asterisk'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'szw/vim-tags'
Plug 't9md/vim-choosewin'
Plug 'houtsnip/vim-emacscommandline'
Plug 'vim-scripts/mru.vim'

" 興味深いけどエラーがでる
" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" その他
Plug 'thinca/vim-quickrun'
Plug 'editorconfig/editorconfig-vim'
"Plug 'zivyangll/git-blame.vim'
"Plug 'tyru/restart.vim'
"Plug 'Shougo/denite.nvim'
Plug 'tyru/open-browser-github.vim'
Plug 'tyru/open-browser.vim'

Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-preview'
Plug 'mattn/benchvimrc-vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'iberianpig/ranger-explorer.vim'
Plug 'mattn/webapi-vim'
"Plug 'tpope/vim-unimpaired'
Plug 'embear/vim-localvimrc'
"Plug 'voldikss/vim-floaterm'
"Plug 'liuchengxu/vim-clap'
"
"PHP
" language
Plug 'sebdah/vim-delve'
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'
Plug 'Rican7/php-doc-modded'

Plug 'vim-vdebug/vdebug'
"Plug 't9md/vim-chef'

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

Plug 'docunext/closetag.vim'
Plug 'ap/vim-css-color'
" https://qiita.com/cyrt/items/ff5edd392b3f41dd6e10
" 遅い？
" Plug 'phpactor/phpactor' 

" js "
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'maksimr/vim-jsbeautify'
" ts "
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'mxw/vim-jsx'

Plug 'chr4/nginx.vim'
" Plug 'shawncplus/phpcomplete.vim' " cocnvimとぶつかりそうなので一旦外す
Plug 'hashivim/vim-terraform'

" Plug 'vexxor/phpdoc.vim'
" Plug 'vim-scripts/php_localvarcheck.vim' 特定の関数でエラーを吐く
" 有用だけどカーソルの移動が遅くなる
"Plug 'flyinshadow/php_localvarcheck.vim'
"Plug 'beanworks/vim-phpfmt'

" TODO  有用だけどビューの保存時遅くなる
" Plug 'bpearson/vim-phpcs'
Plug 'beanworks/vim-phpfmt'
Plug 'vim-jp/vimdoc-ja'
Plug 'kevinhui/vim-docker-tools'

" #LSP
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'mattn/vim-lsp-settings'
" 上のlspとバッティングする？(同じ定義元が複数表示される
" Plug 'felixfbecker/php-language-server', {'do': 'composer install && composer run-script parse-stubs'}


"Plug 'voldikss/coc-bookmark'
" Plug 'liuchengxu/vista.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }


"Plug 'skanehira/docker.vim'

call plug#end()
"-------- vim-plug END --------


"---------------------------------------------------------------------------
" 外部ファイル読み込み
"---------------------------------------------------------------------------

" プロジェクト固有の設定はembear/vim-localvimrcで対応する
if filereadable(expand($HOME.'/.vimrc_local'))
  source $HOME/.vimrc_local
endif

" 検証用スクリプト
if filereadable(expand($HOME.'/myVimscript.vim'))
  source $HOME/myVimscript.vim
endif


if !has('gui_macvim')
    source $HOME/.gvimrc
endif


"let mapleader = "\<Space>"
"let mapleader = ","

"---------------------------------------------------------------------------
" キー設定
"---------------------------------------------------------------------------

"terminalモード中ESCでnormal mode
tnoremap <silent> <ESC> <C-\><C-n>

" easyMotion
" https://github.com/easymotion/vim-easymotion
" nmap s <Plug>(easymotion-s2)
nmap <silent> <Space>j <Plug>(easymotion-j)
nmap <silent> <Space>k <Plug>(easymotion-k)
"map  <silent>f <Plug>(easymotion-bd-f)
"nmap <silent>f <Plug>(easymotion-overwin-f)
" 画面全体  s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" sublime like grep
"nnoremap <Space>sf :CtrlSF 
nnoremap <Space>sf :CtrlSF -ignoredir "*/logs/*" 

nmap  -  <Plug>(choosewin)

" バッファ作成
nmap <C-w>n :enew<CR>
" バッファ削除
"nmap ∑      :BD<CR>


" finderで開く
"nnoremap <silent> <Space>op  :! explorer .<CR>
nnoremap <silent> <Space>op  :! open .<CR>


" メモプラグイン
nnoremap <Space>mn :MemoNew<CR>
nnoremap <Space>ml :MemoList<CR>
nnoremap <Space>mg :MemoGrep<CR>

" json整形
nnoremap <silent> <Space>jq  ::%!jq '.'<CR>

nnoremap <silent> <Space>hr  :GitGutterUndoHunk<CR>

" プラグイン更新
nnoremap <silent> <Space>pi  :PlugInstall<CR>
nnoremap <silent> <Space>pu  :PlugUpdate<CR>
" .設定ファイルを開く
nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
"nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>
nnoremap <silent> <Space>eg  :<C-u>edit $HOME/.gvimrc<CR>
nnoremap <silent> <Space>et  :<C-u>edit $HOME/.tigrc<CR>


nnoremap <silent> <Space>em  :<C-u>edit ~/myVimscript.vim<CR>

nmap ;s :source ~/myVimscript.vim<CR>


" 設定再読み込み
nnoremap <silent> <Space>vi  :source ~/.config/nvim/init.vim<CR>
nmap ;s :source ~/myVimscript.vim<CR>

" Rican7/php-doc-modded
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

"単語を色マーク
nmap <Space>h <Plug>(quickhl-manual-this)
xmap <Space>h <Plug>(quickhl-manual-this)
nmap <Space>H <Plug>(quickhl-manual-reset)
xmap <Space>H <Plug>(quickhl-manual-reset)

" nnoremap / /\v
nnoremap <ESC><ESC> :nohlsearch<CR>

nnoremap ww <C-w>w
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap wh <C-w>h

nnoremap <silent> ,f  :Files<CR>
nnoremap <silent> ,b  :BuffersPreview<CR>
nnoremap <silent> ,h  :LspHover<CR>
" ,fに移行したい
"nnoremap <silent> <Space>f  :Files<CR>

nnoremap <silent> <Space>nf :NERDTreeFind<CR>
nnoremap <silent> <Space>nc :NERDTreeClose<CR>


nmap <silent> gr :LspReferences<CR>
nmap <silent> gd :LspDefinition<CR>
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
" 簡易スニペット(1行のみ）*キー+Tabでシンプルに出力させるため
"---------------------------------------------------------------------------
"nnoremap ld<TAB>  :<C-u>g/TODO_0958509280948320948023/d <CR>
inoremap l<TAB> \Log::debug((print_r($aaa,true))); //TODO_0958509280948320948023<C-c>
"inoremap ll<TAB> Log::write('Debug', print_r($aaa,true));// TODO<C-c>
inoremap lq<TAB> \Log::debug((print_r(\DB::last_query(),true))); //TODO<C-c>


"---------------------------------------------------------------------------
" 各種プラグインの設定
"---------------------------------------------------------------------------

" ---ctrlSF---
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
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'


" ---fzf---
"let g:fzf_layout = { 'up': '~40%' }
let g:fzf_layout = { 'down': '~90%' }
" fzfからファイルにジャンプできるようにする
let g:fzf_buffers_jump = 1

let g:fzf_preview_rate = 0.9

"let g:fzf_command_prefix = 'Fzf'


" ファイル一覧を出すときにプレビュー表示
" reference https://kashewnuts.github.io/2018/12/02/bp_advent_calender.html
command! -bang -nargs=? -complete=dir Files
\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" https://blog.fakiyer.com/entry/2017/08/06/222936
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
" 外部コマンドptを使用してプレビューしながらgrep検索する
command! -bang -nargs=* Grep
\ call fzf#vim#grep(
\   'pt --column --ignore=.git --global-gitignore '.shellescape(<q-args>), 1,
\   <bang>0 ? fzf#vim#with_preview('up:60%')
\           : fzf#vim#with_preview({ 'dir': s:find_git_root() }),
\   <bang>0)


if executable('rg')
    command! -bang -nargs=* Rg
        \ call fzf#vim#grep(
        \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
        \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'up:50%:wrap'))
endif

if executable('buffers')
    command! -bang -nargs=* Buffers
        \ call fzf#vim#buffers(
        \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
        \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'up:50%:wrap'))
endif



" ---bookmark---
"let g:bookmark_sign = '♥'
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_show_warning = 1
" https://github.com/MattesGroeger/vim-bookmarks

let g:bookmark_auto_close = 1


" --quickr-preview.vim--
let g:quickr_preview_keymaps = 0
" nmap <Space>p <plug>(quickr_preview)
nnoremap <silent> <Space>p <plug>(quickr_preview)


"--ale--
let g:ale_linters = {
      \ 'javascript': ['eslint']
      \ }


" --phpmd--
"https://yuzuemon.hatenablog.com/category/PHP
" phpmdの警告一旦消す
let g:syntastic_php_phpmd_post_args=''


" --vim-terraform--
let g:terraform_fmt_on_save = 1


" --winresizer--
let g:winresizer_gui_enable=1


" ---vdebug---
:map <F1> :BreakpointRemove * <CR>
let g:vdebug_options["break_on_open"] = 0


" ---lsp---
let g:lsp_diagnostics_enabled = 0

"---------------------------------------------------------------------------
" その他設定
"---------------------------------------------------------------------------

" 改行時の自動コメントアウト無効 http://www.lesstep.jp/step_on_board/linux/381/
autocmd FileType * setlocal formatoptions-=r
autocmd FileType * setlocal formatoptions-=o


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
" :windo diffthis   開かれている無名バッファのdiffをとる https://thinca.hatenablog.com/entry/20130426/1366910837

" https://github.com/othree/eregex.vim
" For replacement, use :%S// (uppercase S) to trigger perl style regexp.

" :s/, /\r,/g   行をカンマ区切りで改行する
