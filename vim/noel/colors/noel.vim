" noel.vim — purple, white and black, drawn from Noel
"
" Works best with `set termguicolors`; 256-color terminals get the
" nearest xterm colors automatically.

hi clear
if exists('syntax_on')
  syntax reset
endif
let s:dark = &background ==# 'dark'
let g:colors_name = 'noel'

" ---------------------------------------------------------------- palette
if s:dark
  let s:p = {
        \ 'bg':       '#121216', 'fg':       '#f0eff6',
        \ 'bg_alt':   '#1d1c24', 'bg_float': '#1d1c24', 'border':   '#2a2933',
        \ 'gutter':   '#121216', 'line_nr':  '#46444f', 'cur_nr':   '#c4b3f4',
        \ 'status_bg':'#24222e', 'status_fg':'#d6d4e0',
        \ 'status_nc_bg': '#1a1920', 'status_nc_fg': '#6e6c7c',
        \ 'pmenu_bg': '#1d1c24', 'pmenu_fg': '#d6d4e0',
        \ 'visual':   '#34304a', 'search':   '#3c3358', 'match':    '#4a3f6e',
        \ 'nontext':  '#2e2d38', 'comment':  '#5f5d6b',
        \ 'kw':       '#b9a3f2', 'func':     '#f0eff6', 'type':     '#d6cbf7',
        \ 'str':      '#a497cc', 'num':      '#cfcdda', 'ident':    '#b4b2c4',
        \ 'op':       '#8f8d9e', 'accent':   '#b9a3f2', 'on_accent':'#121216',
        \ 'todo_bg':  '#f0eff6', 'todo_fg':  '#121216',
        \ 'red':      '#e08a9a', 'yellow':   '#d9bd85', 'green':    '#9fc6ae',
        \ 'diff_add': '#1b2a24', 'diff_chg': '#221f33', 'diff_del': '#33202a', 'diff_txt': '#352d55',
        \ }
else
  let s:p = {
        \ 'bg':       '#f7f7fa', 'fg':       '#26252e',
        \ 'bg_alt':   '#ece9f4', 'bg_float': '#18171d', 'border':   '#18171d',
        \ 'gutter':   '#18171d', 'line_nr':  '#5e5c6c', 'cur_nr':   '#c2b2f0',
        \ 'status_bg':'#18171d', 'status_fg':'#d6d4e0',
        \ 'status_nc_bg': '#2a2933', 'status_nc_fg': '#8a8898',
        \ 'pmenu_bg': '#18171d', 'pmenu_fg': '#d6d4e0',
        \ 'visual':   '#dcd6ec', 'search':   '#e3dcf3', 'match':    '#d4c8ee',
        \ 'nontext':  '#d6d5de', 'comment':  '#b0afb9',
        \ 'kw':       '#5a3fa3', 'func':     '#26252e', 'type':     '#7a62bb',
        \ 'str':      '#8a7aa8', 'num':      '#4c4a58', 'ident':    '#5a586e',
        \ 'op':       '#76768a', 'accent':   '#7a62bb', 'on_accent':'#f7f7fa',
        \ 'todo_bg':  '#18171d', 'todo_fg':  '#f7f7fa',
        \ 'red':      '#a8475a', 'yellow':   '#9a7a34', 'green':    '#4c7f62',
        \ 'diff_add': '#e3efe8', 'diff_chg': '#ebe7f4', 'diff_del': '#f5e1e6', 'diff_txt': '#d6cbef',
        \ }
endif

" ------------------------------------------------- hex -> xterm-256 helper
function! s:cube_idx(v) abort
  return a:v < 48 ? 0 : a:v < 115 ? 1 : (a:v - 35) / 40
endfunction

function! s:to256(hex) abort
  let r = str2nr(a:hex[1:2], 16)
  let g = str2nr(a:hex[3:4], 16)
  let b = str2nr(a:hex[5:6], 16)
  let lv = [0, 95, 135, 175, 215, 255]
  let [ri, gi, bi] = [s:cube_idx(r), s:cube_idx(g), s:cube_idx(b)]
  let cd = pow(r - lv[ri], 2) + pow(g - lv[gi], 2) + pow(b - lv[bi], 2)
  let avg = (r + g + b) / 3
  let gidx = avg > 238 ? 23 : max([0, (avg - 3) / 10])
  let gv = 8 + 10 * gidx
  let gd = pow(r - gv, 2) + pow(g - gv, 2) + pow(b - gv, 2)
  return gd < cd ? 232 + gidx : 16 + 36 * ri + 6 * gi + bi
endfunction

function! s:hi(group, fg, bg, ...) abort
  let attr = a:0 >= 1 && a:1 !=# '' ? a:1 : 'NONE'
  let cmd = 'hi ' . a:group . ' gui=' . attr . ' cterm=' . attr
  if a:fg !=# ''
    let cmd .= a:fg ==# 'NONE' ? ' guifg=NONE ctermfg=NONE'
          \ : ' guifg=' . s:p[a:fg] . ' ctermfg=' . s:to256(s:p[a:fg])
  endif
  if a:bg !=# ''
    let cmd .= a:bg ==# 'NONE' ? ' guibg=NONE ctermbg=NONE'
          \ : ' guibg=' . s:p[a:bg] . ' ctermbg=' . s:to256(s:p[a:bg])
  endif
  if a:0 >= 2
    let cmd .= ' guisp=' . s:p[a:2]
  endif
  execute cmd
endfunction

" ---------------------------------------------------------------- editor
call s:hi('Normal',       'fg',        'bg')
call s:hi('NormalFloat',  'pmenu_fg',  'bg_float')
call s:hi('FloatBorder',  'line_nr',   'bg_float')
call s:hi('CursorLine',   '',          'bg_alt')
call s:hi('CursorColumn', '',          'bg_alt')
call s:hi('ColorColumn',  '',          'bg_alt')

" the black hem: gutter, separators and status line
call s:hi('LineNr',       'line_nr',   'gutter')
call s:hi('CursorLineNr', 'cur_nr',    'gutter', 'bold')
call s:hi('SignColumn',   'line_nr',   'gutter')
call s:hi('FoldColumn',   'line_nr',   'gutter')
call s:hi('VertSplit',    'border',    'border')
call s:hi('WinSeparator', 'border',    'border')
call s:hi('StatusLine',   'status_fg', 'status_bg')
call s:hi('StatusLineNC', 'status_nc_fg', 'status_nc_bg')
call s:hi('TabLine',      'status_nc_fg', 'status_nc_bg')
call s:hi('TabLineFill',  '',          'status_nc_bg')
call s:hi('TabLineSel',   'on_accent', 'accent', 'bold')

call s:hi('Folded',       'comment',   'bg_alt', 'italic')
call s:hi('Visual',       '',          'visual')
call s:hi('Search',       'fg',        'search')
call s:hi('IncSearch',    'on_accent', 'kw',     'bold')
call s:hi('CurSearch',    'on_accent', 'kw',     'bold')
call s:hi('MatchParen',   'kw',        'match',  'bold')
call s:hi('NonText',      'nontext',   'NONE')
call s:hi('EndOfBuffer',  'nontext',   'NONE')
call s:hi('SpecialKey',   'nontext',   'NONE')
call s:hi('Whitespace',   'nontext',   'NONE')
call s:hi('Conceal',      'comment',   'NONE')
call s:hi('Directory',    'kw',        'NONE', 'bold')
call s:hi('Title',        'kw',        'NONE', 'bold')
call s:hi('Pmenu',        'pmenu_fg',  'pmenu_bg')
call s:hi('PmenuSel',     'on_accent', 'accent', 'bold')
call s:hi('PmenuSbar',    '',          'pmenu_bg')
call s:hi('PmenuThumb',   '',          'line_nr')
call s:hi('WildMenu',     'on_accent', 'accent', 'bold')
call s:hi('ErrorMsg',     'red',       'NONE', 'bold')
call s:hi('WarningMsg',   'yellow',    'NONE', 'bold')
call s:hi('MoreMsg',      'kw',        'NONE')
call s:hi('ModeMsg',      'kw',        'NONE', 'bold')
call s:hi('Question',     'kw',        'NONE')
call s:hi('QuickFixLine', '',          'visual')

call s:hi('DiffAdd',      '',          'diff_add')
call s:hi('DiffChange',   '',          'diff_chg')
call s:hi('DiffDelete',   'red',       'diff_del')
call s:hi('DiffText',     '',          'diff_txt', 'bold')

call s:hi('SpellBad',     '',          'NONE', 'undercurl', 'red')
call s:hi('SpellCap',     '',          'NONE', 'undercurl', 'yellow')
call s:hi('SpellLocal',   '',          'NONE', 'undercurl', 'type')
call s:hi('SpellRare',    '',          'NONE', 'undercurl', 'kw')

" ---------------------------------------------------------------- syntax
call s:hi('Comment',        'comment', 'NONE', 'italic')
call s:hi('SpecialComment', 'op',      'NONE', 'italic')
call s:hi('String',         'str',     'NONE')
call s:hi('Character',      'str',     'NONE')
call s:hi('Constant',       'num',     'NONE')
call s:hi('Number',         'num',     'NONE')
call s:hi('Float',          'num',     'NONE')
call s:hi('Boolean',        'num',     'NONE', 'bold')
call s:hi('Identifier',     'ident',   'NONE')
call s:hi('Function',       'func',    'NONE')
call s:hi('Type',           'type',    'NONE')
call s:hi('StorageClass',   'kw',      'NONE')
call s:hi('Structure',      'type',    'NONE')
call s:hi('Typedef',        'type',    'NONE')
call s:hi('Statement',      'kw',      'NONE', 'bold')
call s:hi('Keyword',        'kw',      'NONE', 'bold')
call s:hi('Conditional',    'kw',      'NONE', 'bold')
call s:hi('Repeat',         'kw',      'NONE', 'bold')
call s:hi('Label',          'kw',      'NONE')
call s:hi('Exception',      'kw',      'NONE', 'bold')
call s:hi('Operator',       'op',      'NONE')
call s:hi('PreProc',        'ident',   'NONE')
call s:hi('Include',        'ident',   'NONE', 'italic')
call s:hi('Define',         'ident',   'NONE')
call s:hi('Macro',          'ident',   'NONE')
call s:hi('Special',        'type',    'NONE')
call s:hi('SpecialChar',    'kw',      'NONE')
call s:hi('Delimiter',      'op',      'NONE')
call s:hi('Underlined',     'type',    'NONE', 'underline')
call s:hi('Todo',           'todo_fg', 'todo_bg', 'bold')
call s:hi('Error',          'red',     'NONE', 'bold,underline')

" PHP / Laravel niceties
hi! link phpVarSelector Identifier
hi! link phpIdentifier  Identifier
hi! link phpMethods     Function
hi! link phpClasses     Type

" ---------------------------------------------------------------- neovim
if has('nvim')
  call s:hi('DiagnosticError', 'red',    'NONE')
  call s:hi('DiagnosticWarn',  'yellow', 'NONE')
  call s:hi('DiagnosticInfo',  'type',   'NONE')
  call s:hi('DiagnosticHint',  'kw',     'NONE')
  call s:hi('DiagnosticOk',    'green',  'NONE')
  call s:hi('DiagnosticUnderlineError', '', 'NONE', 'undercurl', 'red')
  call s:hi('DiagnosticUnderlineWarn',  '', 'NONE', 'undercurl', 'yellow')
  call s:hi('DiagnosticUnderlineInfo',  '', 'NONE', 'undercurl', 'type')
  call s:hi('DiagnosticUnderlineHint',  '', 'NONE', 'undercurl', 'kw')

  " --- tree-sitter captures (cover everything nvim's default scheme colors)
  hi! link @variable                 Identifier
  hi! link @variable.builtin         Keyword
  hi! link @variable.parameter       Identifier
  hi! link @variable.parameter.builtin Identifier
  hi! link @variable.member          Identifier
  hi! link @property                 Identifier
  hi! link @field                    Identifier
  hi! link @parameter                Identifier
  hi! link @constant                 Constant
  hi! link @constant.builtin         Constant
  hi! link @constant.macro           Constant
  hi! link @module                   Include
  hi! link @module.builtin           Include
  hi! link @namespace                Include
  hi! link @label                    Label
  hi! link @string                   String
  hi! link @string.special           String
  hi! link @string.special.symbol    String
  hi! link @string.special.url       Underlined
  hi! link @string.escape            SpecialChar
  hi! link @string.regexp            SpecialChar
  hi! link @character                Character
  hi! link @character.special        SpecialChar
  hi! link @number                   Number
  hi! link @number.float             Float
  hi! link @boolean                  Boolean
  hi! link @type                     Type
  hi! link @type.builtin             Type
  hi! link @type.definition          Type
  hi! link @type.qualifier           Keyword
  hi! link @attribute                PreProc
  hi! link @attribute.builtin        PreProc
  hi! link @function                 Function
  hi! link @function.call            Function
  hi! link @function.builtin         Function
  hi! link @function.macro           Macro
  hi! link @function.method          Function
  hi! link @function.method.call     Function
  hi! link @method                   Function
  hi! link @method.call              Function
  hi! link @constructor              Type
  hi! link @operator                 Operator
  hi! link @keyword                  Keyword
  hi! link @keyword.function         Keyword
  hi! link @keyword.operator         Keyword
  hi! link @keyword.import           Keyword
  hi! link @keyword.return           Keyword
  hi! link @keyword.modifier         Keyword
  hi! link @keyword.type             Keyword
  hi! link @keyword.conditional      Conditional
  hi! link @keyword.repeat           Repeat
  hi! link @keyword.exception        Exception
  hi! link @punctuation              Delimiter
  hi! link @punctuation.delimiter    Delimiter
  hi! link @punctuation.bracket      Delimiter
  hi! link @punctuation.special      SpecialChar
  hi! link @comment                  Comment
  hi! link @comment.todo             Todo
  hi! link @comment.note             Todo
  hi! link @comment.warning          WarningMsg
  hi! link @comment.error            ErrorMsg
  hi! link @tag                      Keyword
  hi! link @tag.builtin              Keyword
  hi! link @tag.attribute            Identifier
  hi! link @tag.delimiter            Delimiter
  hi! link @markup.heading           Title
  hi! link @markup.link              Underlined
  hi! link @markup.link.url          Underlined
  hi! link @markup.raw               String

  " --- LSP semantic tokens (these sit on top of tree-sitter)
  hi! link @lsp.type.parameter       Identifier
  hi! link @lsp.type.variable        Identifier
  hi! link @lsp.type.property        Identifier
  hi! link @lsp.type.class           Type
  hi! link @lsp.type.interface       Type
  hi! link @lsp.type.enum            Type
  hi! link @lsp.type.enumMember      Constant
  hi! link @lsp.type.type            Type
  hi! link @lsp.type.namespace       Include
  hi! link @lsp.type.function        Function
  hi! link @lsp.type.method          Function
  hi! link @lsp.type.keyword         Keyword
  hi! link @lsp.type.string          String
  hi! link @lsp.type.number          Number
  hi! link @lsp.type.comment         Comment
  hi! link @lsp.type.decorator       PreProc
  hi! link @lsp.mod.defaultLibrary   Function
endif

" ------------------------------------------- LSP semantic tokens (Vim too)
" coc.nvim, vim-lsp and yegappan/lsp paint these via text properties,
" which synID() can't see — so map them back onto noel's groups.
for [s:kind, s:to] in [
      \ ['Parameter', 'Identifier'], ['Variable', 'Identifier'],
      \ ['Property',  'Identifier'], ['Class',    'Type'],
      \ ['Interface', 'Type'],       ['Enum',     'Type'],
      \ ['EnumMember','Constant'],   ['Type',     'Type'],
      \ ['TypeParameter', 'Type'],   ['Namespace','Include'],
      \ ['Function',  'Function'],   ['Method',   'Function'],
      \ ['Keyword',   'Keyword'],    ['String',   'String'],
      \ ['Number',    'Number'],     ['Comment',  'Comment'],
      \ ['Decorator', 'PreProc'],    ['Macro',    'Macro'],
      \ ]
  for s:prefix in ['CocSemType', 'LspSemantic']
    execute 'hi! link ' . s:prefix . s:kind . ' ' . s:to
  endfor
endfor
unlet s:kind s:to s:prefix

" git signs
call s:hi('DiffAdded',   'green', 'NONE')
call s:hi('DiffRemoved', 'red',   'NONE')
hi! link GitSignsAdd    DiffAdded
hi! link GitSignsChange Type
hi! link GitSignsDelete DiffRemoved

let &background = s:dark ? 'dark' : 'light'
