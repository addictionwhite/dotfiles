
autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost *ag* cwindow


"-------- vim-plug START --------
" TODO コメントアウトしているもの消す(過去のものはgit logでsearchできるようにする）

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
Plug 'sickill/vim-monokai', { 'as': 'vim-monokai_sickill' }
Plug 'sainnhe/vim-color-forest-night'
Plug 'Rigellute/rigel'
Plug 'hauleth/blame.vim'
Plug 'crusoexia/vim-monokai'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'w0ng/vim-hybrid'
Plug 'sainnhe/sonokai'
"Plug 'sickill/vim-monokai', {'as' :'test_monokai'}
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

" 編集
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-repeat' "vim-macro-repeatと同等
Plug 'jacobchrismarsh/vim-macro-repeat'
"Plug 'terryma/vim-multiple-cursors' "TODO: 不要そうなら消す
Plug 'Townk/vim-autoclose'
Plug 'w0rp/ale'
"Plug 'tpope/vim-eunuch'
" 改行は挿入できない
"Plug 'hlissner/vim-multiedit' 
"Plug 'mg979/vim-visual-multi'
" 他のプラグインとのかねあいがノイズがはいる
"Plug 'vim-scripts/vim-auto-save' 
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'pbrisbin/vim-mkdir'
" 判定がシビアに感じる
"Plug 'pirey/underscored.vim'
"Plug 'mattn/vim-sonictemplate'
Plug 'mg979/vim-visual-multi'

"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" TODO マークダウン編集不要そうなら消す
" マークダウンのプレビューに必要
Plug 'tpope/vim-markdown'
Plug 'kannokanno/previm'
"Plug 'tyru/open-browser.vim' " 既に定義されているため
Plug 'AndrewRadev/switch.vim'


Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"VCS 
Plug 'tpope/vim-fugitive'
Plug 'aacunningham/vim-fuzzy-stash'
"Plug 'tommcdo/vim-fugitive-blame-ext'
"Plug 'vim-scripts/vcscommand.vim' " SVN使うときには必要(今使用してないので外す）
Plug 'airblade/vim-gitgutter'
"Plug 'cohama/agit.vim'
"Plug 'rhysd/committia.vim' " vital.vimに依存
"Plug 'vim-jp/vital.vim'  " plugin作成用の関数群
Plug 'gregsexton/gitv', {'on': ['Gitv']}
"Plug 'jreybert/vimagit'
"Plug 'rhysd/git-messenger.vim'
Plug 'iberianpig/tig-explorer.vim'
" Plug 'vim-scripts/vim-svngutter'
" Plug 'idanarye/vim-merginal'
" 画面がちらつく
"Plug 'tveskag/nvim-blame-line'
Plug 'lambdalisue/gina.vim'
" https://teratail.com/questions/116046 
" 補完の際の改行に干渉しているもよう
" verbose inoremap <CR> 
"Plug 'cohama/lexima.vim'
"Plug 'skanehira/gh.vim' 
"Plug 'git-time-metric/gtm-vim-plugin'

" 表示
Plug 'simeji/winresizer' "ウィンドウサイズ変更
Plug 'Yggdroot/indentLine'
"Plug 'tyru/current-func-info.vim' " 表示している関数名表示 (カーソル移動が遅くなる
Plug 'haya14busa/incsearch.vim' " 検索中の文字列をハイライト
"Plug 'vim-scripts/vim-signature' " マーク位置の表示
Plug 'elzr/vim-json' 
Plug 't9md/vim-quickhl' " 指定の単語をハイライト
"Plug 'myrobo/smart_tabline.vim'
Plug 'pacha/vem-tabline'
Plug 'mechatroner/rainbow_csv'
Plug 'AndrewRadev/linediff.vim'
"Plug 'kamykn/spelunker.vim' " 重い
" Plug 'jeetsukumaran/vim-buffergator'
Plug 'ryanoasis/vim-devicons'
" ツリー描写遅くなる
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Plug 'thiagoalessio/rainbow_levels.vim'
Plug 'vimplugin/project.vim' "TODO: 不要そうなら消す
Plug 'scrooloose/nerdtree'

"Plug 'lambdalisue/fern.vim' ツリー上での操作がNerdTreeの方が合っているため
"Plug 'vifm/vifm.vim'

"Plug 'weirongxu/coc-explorer'
Plug 'ryanoasis/nerd-fonts'

"Plug 'camspiers/lens.vim'

" Plug 'IMOKURI/line-number-interval.nvim' " 重い?
"Plug 'mkitt/tabline.vim'
"Plug 'itchyny/lightline.vim'

"Plug 'zefei/vim-wintabs'
"Plug 'bagrat/vim-buffet'
"Plug 'skywind3000/vim-quickui' " 有用だがaws ssm環境で動かないため...
"Plug 'itchyny/thumbnail.vim'
"Plug 'obcat/vim-sclow'

Plug 'jeetsukumaran/vim-buffergator'

"検索置換
Plug 'dyng/ctrlsf.vim' " Grep like sublime text
Plug 'thinca/vim-qfreplace' " grep 結果を置換
"Plug 'mileszs/ack.vim'
Plug 'fuenor/qfixgrep'
Plug 'osyo-manga/vim-over'
"Plug 'wsdjeg/FlyGrep.vim'
" Plug 'kana/vim-operator-replace'
Plug 'kana/vim-operator-user'
"Plug 'othree/eregex.vim' " インクリメンタルサーチができなくなる http://deris.hatenablog.jp/entry/2013/05/15/024932
Plug 'itchyny/vim-cursorword'
" Plug 'rstacruz/vim-gitgrep' " 使いやすそうだがgrepの結果をreplaceできないので一旦ctrlsfの方を採用

" バッファ操作
Plug 'vim-scripts/copypath.vim'
Plug 'airblade/vim-rooter' " ディレクトリルートへ遷移
Plug 'qpkorr/vim-bufkill'
Plug 'markonm/traces.vim'
"Plug 'troydm/easybuffer.vim'
"Plug 'jlanzarotta/bufexplorer'
" Plug 'vim-scripts/BufOnly.vim'
" Plug 'rbgrouleff/bclose.vim'
" 重い？カーソル移動が鈍る
"Plug 'mg979/vim-xtabline'
" Plug 'vim-scripts/Changed'
Plug 'tpope/vim-abolish'

" 移動
Plug 'haya14busa/vim-asterisk'
Plug 'Lokaltog/vim-easymotion'
" Plug 'haya14busa/vim-edgemotion'

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Plug 'ctrlpvim/ctrlp.vim' " エラーが出る'maxmempattern' 以上のメモリを使用します

"Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
"Plug 'yuki-ycino/fzf-preview.vim'
"Plug 'chengzeyi/fzf-preview.vim', { 'as': 'fzf-preview_c' }

"Plug 'MattesGroeger/vim-bookmarks'
"Plug 'Yilin-Yang/vim-markbar'
Plug 'kshenoy/vim-signature'

"Plug 'szw/vim-tags'
Plug 't9md/vim-choosewin'
Plug 'houtsnip/vim-emacscommandline'
Plug 'vim-scripts/mru.vim'
"Plug 'pechorin/any-jump.vim' " 精度がLSPより荒い
Plug 'unblevable/quick-scope'

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

Plug 'skywind3000/asyncrun.vim' "TODO: なにかに依存して使われていなければ不要そう
Plug 'skywind3000/vim-preview' "TODO: 不要そうなら消す

"Plug 'mattn/benchvimrc-vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'iberianpig/ranger-explorer.vim'
Plug 'mattn/webapi-vim'
"Plug 'tpope/vim-unimpaired'

" エラーでるようになった？(他のプラグインとぶつかっているようなエラーが出る
" Plug 'embear/vim-localvimrc'
" https://thinca.hatenablog.com/entry/20110108/1294427418
"Plug 'thinca/vim-localrc'

"Plug 'voldikss/vim-floaterm'
"Plug 'liuchengxu/vim-clap'


" Debug
Plug 'sebdah/vim-delve'
Plug 'vim-vdebug/vdebug'

" ブレイクポイントで止まらなくなったので一旦vdebugを使用するようにする
  " ブレイクポイントに一発で止まらない
  " phpunitでの挙動がおかしい
"./install_gadget.py --force-enable-php でエラーが起きる RuntimeError: Failed to install gadgets: vscode-php-debug  20200217
"Plug 'puremourning/vimspector' 


Plug 'pixelneo/vim-python-docstring'
" よさそうだがdoqが必要なので一旦見送り(install時エラーになったので）
" Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }


"PHP
" language
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'hail2u/vim-css3-syntax'
Plug 'Rican7/php-doc-modded'
"Plug 'shawncplus/phpcomplete.vim' " cocnvimとぶつかりそうなので一旦外す
"Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' } 重い？


Plug 'docunext/closetag.vim' " 基本はEmmet。補助的に使用したい
Plug 'ap/vim-css-color' " TODO:不要そうなら消す
" https://qiita.com/cyrt/items/ff5edd392b3f41dd6e10
" 遅い？
"Plug 'phpactor/phpactor' 
" https://phpactor.readthedocs.io/en/master/usage/vim-plugin.html
"Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}

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

" ohter
"Plug 'chr4/nginx.vim'
"Plug 'hashivim/vim-terraform'
"Plug 't9md/vim-chef'
"Plug 'itkq/fluentd-vim' " 効かない?

" Plug 'vexxor/phpdoc.vim'
" Plug 'vim-scripts/php_localvarcheck.vim' 特定の関数でエラーを吐く
" 有用だけどカーソルの移動が遅くなる
"Plug 'flyinshadow/php_localvarcheck.vim'
"Plug 'beanworks/vim-phpfmt'

" TODO  有用だけどビューの保存時遅くなる
" Plug 'bpearson/vim-phpcs'
Plug 'beanworks/vim-phpfmt'
"Plug 'kevinhui/vim-docker-tools'

Plug 'tell-k/vim-autopep8'

" #LSP
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'mattn/vim-lsp-settings'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" 上のlspとバッティングする？(同じ定義元が複数表示される
"Plug 'felixfbecker/php-language-server', {'do': 'composer install && composer run-script parse-stubs'}


"Plug 'voldikss/coc-bookmark'
" Plug 'liuchengxu/vista.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'vim-jp/vimdoc-ja'
"Plug 'skanehira/docker.vim'

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


if has('gui_macvim')
    set guioptions+=M

    " macVimのterminalでcommand+vでpaste(fzfで用いる）
    " https://github.com/macvim-dev/macvim/issues/676
    macm Edit.Paste key=<nop>
    tmap <D-v> <C-w>"+
    nnoremap <D-v> "+p
    vnoremap <D-v> "+p
    inoremap <D-v> <C-R><C-O>+
    cnoremap <D-v> <C-R><C-O>+

    set pythonthreedll=/Library/Frameworks/Python.framework/Versions/3.6/Python
    set pythonthreehome=/Library/Frameworks/Python.framework/Versions/3.6
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
nnoremap <silent> ,b  :FzfBuffers<CR>
nnoremap <silent> ,s  :Snippets<CR>
"nnoremap <silent> ,h  :LspHover<CR>


nnoremap <silent> <Space>nf :NERDTreeFind<CR>
nnoremap <silent> <Space>nc :NERDTreeClose<CR>

"nnoremap <silent> <Space>bt :BuffergatorToggle<CR>
nnoremap <silent> <Space>b :BuffergatorToggle<CR>


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
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'



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
"let g:fzf_layout = { 'up': '~40%' }
"let g:fzf_layout = { 'down': '~90%' }
let g:fzf_layout = { 'down': '~70%' }
" fzfからファイルにジャンプできるようにする
let g:fzf_buffers_jump = 1

let g:fzf_preview_rate = 0.9

let g:fzf_command_prefix = 'Fzf'



"command! -bang -nargs=* Ggrep
"  \ call fzf#vim#grep(
"  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
"  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


" ファイル一覧を出すときにプレビュー表示
" reference https://kashewnuts.github.io/2018/12/02/bp_advent_calender.html
command! -bang -nargs=? -complete=dir Files
\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" https://blog.fakiyer.com/entry/2017/08/06/222936
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

"" 外部コマンドptを使用してプレビューしながらgrep検索する
"command! -bang -nargs=* Grep
"\ call fzf#vim#grep(
"\   'pt --column --ignore=.git --global-gitignore '.shellescape(<q-args>), 1,
"\   <bang>0 ? fzf#vim#with_preview('up:60%')
"\           : fzf#vim#with_preview({ 'dir': s:find_git_root() }),
"\   <bang>0)
"
"
"if executable('rg')
"    command! -bang -nargs=* Rg
"        \ call fzf#vim#grep(
"        \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
"        \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'up:50%:wrap'))
"endif

if executable('buffers')
    command! -bang -nargs=* Buffers
        \ call fzf#vim#buffers(
        \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
        \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'up:50%:wrap'))
endif



"" ---bookmark---
""    龎
"" https://www.nerdfonts.com/cheat-sheet
""let g:bookmark_sign = ''
"let g:bookmark_sign = ''
"
"let NERDTreeShowHidden = 1
"
""
"let g:bookmark_save_per_working_dir = 1
"let g:bookmark_auto_save = 1
"let g:bookmark_show_warning = 1
"" https://github.com/MattesGroeger/vim-bookmarks
"
"let g:bookmark_auto_close = 1


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


" --ultisnips--
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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


" たまに遅くなっている原因？検証
let g:phpfmt_autosave = 0

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


"autocmd BufNewFile,BufRead *.gs  set filetype=javascript


" ,を使うとfが使いづらくなるので別を割り当てる
"nnoremap <silent>,vf :Vifm<CR>
"nnoremap <silent>,my  :call MyFunc()<CR>
"nnoremap <silent>,g  :call GitFunc()<CR>
"nnoremap <silent>,pa  :call PhactorFunc()<CR>
"nnoremap <silent>,py  :call MyPython()<CR>
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

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
"nmap        s   <Plug>(vsnip-select-text)
"xmap        s   <Plug>(vsnip-select-text)
"nmap        S   <Plug>(vsnip-cut-text)
"xmap        S   <Plug>(vsnip-cut-text)
"
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


"command Tr NERDTree
"COMMAND oPG oPENgITHUBfILE






" https://getpocket.com/read/3241960719
" https://gist.github.com/AndrewRadev/1371174
" bookmark start
nnoremap ma :Bookmark 
nnoremap mc :CopenBookmarks<CR>
nnoremap md :DelBookmark<CR>


set viminfo+=!

if !exists('g:BOOKMARKS')
  let g:BOOKMARKS = {}
endif

" Add the current [filename, cursor position] in g:BOOKMARKS under the given
" name
command! -nargs=1 Bookmark call s:Bookmark(<f-args>)
function! s:Bookmark(name)
  let file   = expand('%:p')
  let cursor = getpos('.')

  if file != ''
    let g:BOOKMARKS[a:name] = [file, cursor]
  else
    echom "No file"
  endif

  wviminfo
endfunction

" Delete the user-chosen bookmark
command! -nargs=1 -complete=custom,s:BookmarkNames DelBookmark call s:DelBookmark(<f-args>)
function! s:DelBookmark(name)
  if !has_key(g:BOOKMARKS, a:name)
    return
  endif

  call remove(g:BOOKMARKS, a:name)
  wviminfo
endfunction

" Go to the user-chosen bookmark
command! -nargs=1 -complete=custom,s:BookmarkNames GotoBookmark call s:GotoBookmark(<f-args>)
function! s:GotoBookmark(name)
  if !has_key(g:BOOKMARKS, a:name)
    return
  endif

  let [filename, cursor] = g:BOOKMARKS[a:name]

  exe 'edit '.filename
  call setpos('.', cursor)
endfunction

" Open all bookmarks in the quickfix window
command! CopenBookmarks call s:CopenBookmarks()
function! s:CopenBookmarks()
  let choices = []

  for [name, place] in items(g:BOOKMARKS)
    let [filename, cursor] = place

    call add(choices, {
          \ 'text':     name,
          \ 'filename': filename,
          \ 'lnum':     cursor[1],
          \ 'col':      cursor[2]
          \ })
  endfor

  call setqflist(choices)
  copen
endfunction

" Completion function for choosing bookmarks
function! s:BookmarkNames(A, L, P)
  return join(sort(keys(g:BOOKMARKS)), "\n")
endfunction


" bookmark end


" https://vim-jp.org/vim-users-jp/2009/08/31/Hack-65.html
" : 選択範囲を検索する
vnoremap z/ <ESC>/\%V
vnoremap z? <ESC>?\%V



let g:gtm_plugin_status_enabled = 1

" bが遅くなる
" http://ivxi.hatenablog.com/entry/2013/05/23/163825
"nnoremap <silent>bp :bprevious<CR>
"nnoremap <silent>bn :bnext<CR>
"nnoremap <silent>bb :b#<CR>



let g:vem_tabline_show_number='index'
