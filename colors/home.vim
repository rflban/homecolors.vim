hi clear

if exists("syntax_on")
  syntax reset
endif

if &background == 'light'
    let s:colors = home#getDayColors()
else
    let s:colors = home#getNightColors()
endif

let colors_name = "home"

let s:fg      = s:colors.fg.gui
let s:fg1     = s:colors.fg1.gui
let s:fg2     = s:colors.fg2.gui

let s:bg      = s:colors.bg.gui
let s:bg1     = s:colors.bg1.gui
let s:bg1_1   = s:colors.bg1_1.gui
let s:bg2     = s:colors.bg2.gui
let s:bg2_1   = s:colors.bg2_1.gui
let s:bg3     = s:colors.bg3.gui
let s:bg4     = s:colors.bg4.gui

let s:black   = s:colors.black.gui
let s:red     = s:colors.red.gui
let s:green   = s:colors.green.gui
let s:yellow  = s:colors.yellow.gui
let s:blue    = s:colors.blue.gui
let s:magenta = s:colors.magenta.gui
let s:cyan    = s:colors.cyan.gui
let s:white   = s:colors.white.gui

let colorgroup = {}

"" Interface
"" Editor
let colorgroup['Normal']          = { 'guibg': s:bg, 'guifg': s:fg }
let colorgroup['Cursor']          = { 'guibg': s:bg }
let colorgroup['CursorLine']      = { 'guibg': s:bg1_1 }
let colorgroup['LineNr']          = { 'guibg': s:bg, 'guifg': s:fg2 }
let colorgroup['CursorLineNR']    = { 'guibg': s:bg1_1, 'guifg': s:fg1, 'gui': 'bold' }
let colorgroup['EndOfBuffer']     = { 'guibg': s:bg }

"" Window/Tabs
let colorgroup['VertSplit']       = { 'guibg': s:bg }
let colorgroup['ColorColumn']     = { 'guibg': s:bg }
let colorgroup['TabLine']         = { 'guibg': s:bg3 }
let colorgroup['TabLineFill']     = { 'guibg': s:bg3 }
let colorgroup['TabLineSel']      = { 'guibg': s:bg }

"" Number column
let colorgroup['CursorColumn']    = { 'guibg': s:bg }
let colorgroup['FoldColumn']      = { 'guibg': s:bg }
let colorgroup['SignColumn']      = { 'guibg': s:bg }
let colorgroup['Folded']          = { 'guibg': s:bg }

"" File navigation / searching
let colorgroup['Directory']       = { 'guibg': s:bg, 'guifg': s:blue }
let colorgroup['Search']          = { 'guibg': s:bg2 }
let colorgroup['IncSearch']       = { 'guibg': s:bg2 }

let colorgroup['MatchParen']      = { 'guibg': 'none', 'guifg': s:yellow, 'gui': 'none' }

"" Prompt
let colorgroup['StatusLine']      = { 'guibg': s:bg }
let colorgroup['StatusLineNC']    = { 'guibg': s:bg }
let colorgroup['WildMenu']        = { 'guibg': s:bg }
let colorgroup['Question']        = { 'guibg': s:bg }
let colorgroup['Title']           = { 'guibg': s:bg }
let colorgroup['ModeMsg']         = { 'guibg': s:bg }
let colorgroup['MoreMsg']         = { 'guibg': s:bg }

"" Visual aid
let colorgroup['Visual']          = { 'guibg': s:bg2_1 }
let colorgroup['VisualNOS']       = { 'guibg': s:bg }
let colorgroup['NonText']         = { 'guibg': s:bg }

let colorgroup['Todo']            = { 'guibg': s:yellow, 'guifg': s:bg }
let colorgroup['Underlined']      = { 'guibg': s:bg }
let colorgroup['Error']           = { 'guibg': s:red, 'guifg': s:bg }
let colorgroup['ErrorMsg']        = { 'guibg': s:bg, 'guifg': s:red }
let colorgroup['WarningMsg']      = { 'guibg': s:bg, 'guifg': s:yellow }
let colorgroup['Ignore']          = { 'guibg': s:bg }
let colorgroup['SpecialKey']      = { 'guibg': s:bg }

""" Syntax
"" Base
let colorgroup['Statement']       = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['Conditional']     = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['Repeat']          = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['Label']           = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Operator']        = { 'guibg': 'none', 'guifg': s:red }
let colorgroup['Keyword']         = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Exception']       = { 'guibg': 'none', 'guifg': s:red }
let colorgroup['Comment']         = { 'guibg': 'none', 'guifg': s:white, 'gui': 'italic' }

let colorgroup['Special']         = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['SpecialChar']     = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Tag']             = { 'guibg': 'none' }
let colorgroup['Delimiter']       = { 'guibg': 'none', 'guifg': s:red }
let colorgroup['SpecialComment']  = { 'guibg': 'none' }
let colorgroup['Debug']           = { 'guibg': 'none', 'guifg': s:yellow }

"" Types
let colorgroup['Constant']        = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['String']          = { 'guibg': 'none', 'guifg': s:green }
let colorgroup['StringDelimiter'] = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Character']       = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Number']          = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Boolean']         = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Float']           = { 'guibg': 'none', 'guifg': s:cyan }

let colorgroup['Identifier']      = { 'guibg': 'none', 'guifg': s:fg }
let colorgroup['Function']        = { 'guibg': 'none', 'guifg': s:blue }

"" C like
let colorgroup['PreProc']         = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['Include']         = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['Define']          = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['Macro']           = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['PreCondit']       = { 'guibg': 'none', 'guifg': s:magenta }

let colorgroup['Type']            = { 'guibg': 'none', 'guifg': s:yellow }
let colorgroup['StorageClass']    = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['Structure']       = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['Typedef']         = { 'guibg': 'none', 'guifg': s:yellow }

"" Completion menu
let colorgroup['Pmenu']           = { 'guibg': s:bg1 }
let colorgroup['PmenuSel']        = { 'guibg': s:bg2 }
let colorgroup['PmenuSbar']       = { 'guibg': s:bg2 }
let colorgroup['PmenuThumb']      = { 'guibg': s:bg4 }

"" Spelling
let colorgroup['SpellBad']        = { 'guibg': s:bg, 'guifg': s:red, 'gui': 'underline' }
let colorgroup['SpellCap']        = { 'guibg': s:bg, 'guifg': s:yellow, 'gui': 'underline' }
let colorgroup['SpellLocal']      = { 'guibg': s:bg, 'guifg': s:magenta, 'gui': 'underline' }
let colorgroup['SpellRare']       = { 'guibg': s:bg, 'guifg': s:green, 'gui': 'underline' }

""" Neovim
if has("nvim")
"" Terminal
  let g:terminal_color_background = s:bg
  let g:terminal_color_foreground = s:fg

  let g:terminal_color_0 =  s:black
  let g:terminal_color_1 =  s:red
  let g:terminal_color_2 =  s:green
  let g:terminal_color_3 =  s:yellow
  let g:terminal_color_4 =  s:blue
  let g:terminal_color_5 =  s:magenta
  let g:terminal_color_6 =  s:cyan
  let g:terminal_color_7 =  s:white

  let g:terminal_color_8 =  s:black
  let g:terminal_color_9 =  s:red
  let g:terminal_color_10 = s:green
  let g:terminal_color_11 = s:yellow
  let g:terminal_color_12 = s:blue
  let g:terminal_color_13 = s:magenta
  let g:terminal_color_14 = s:cyan
  let g:terminal_color_15 = s:white
endif

"" Plugins
" Identline
let g:indentLine_color_gui = s:bg2

" vim-better-whitespace
let colorgroup['ExtraWhitespace'] = { 'guibg': s:red }

" vim-lsp-cxx-highlight
let colorgroup['LspCxxHlGroupEnumConstant'] = { 'guifg': s:cyan }
let colorgroup['LspCxxHlGroupNamespace'] = { 'guifg': s:magenta }
let colorgroup['LspCxxHlGroupMemberVariable'] = { 'guifg': s:blue }

" CoC
let colorgroup['CocErrorSign']    = { 'guibg': 'none', 'guifg': s:red }
let colorgroup['CocWarningSign']  = { 'guibg': 'none', 'guifg': s:yellow }
let colorgroup['CocInfoSign']     = { 'guibg': 'none', 'guifg': s:blue }
let colorgroup['CocHintSign']     = { 'guibg': 'none', 'guifg': s:cyan }
let colorgroup['CocSelectedText'] = { 'guibg': 'none', 'guifg': s:magenta }
let colorgroup['CocCodeLens']     = { 'guibg': 'none', 'guifg': s:white }

for key in keys(colorgroup)
    let s:colors = colorgroup[key]

    if has_key(s:colors, 'gui')
        let gui = s:colors['gui']
    else
        let gui='none'
    endif

    if has_key(s:colors, 'guifg')
        let guifg = s:colors['guifg']
    else
        let guifg='none'
    endif

    if has_key(s:colors, 'guibg')
        let guibg = s:colors['guibg']
    else
        let guibg='none'
    endif

    execute "hi ".key." gui=".gui." guifg=".guifg." guibg=".guibg
endfor

