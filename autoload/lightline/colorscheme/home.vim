if &background == 'light'
    let s:colors = home#getDayColors()
else
    let s:colors = home#getNightColors()
endif

let s:fg      = [ s:colors.fg.gui, 0 ]
let s:fg1     = [ '#808082', 0 ]
let s:fg2     = [ '#A0A0A2', 0 ]

let s:bg      = [ s:colors.bg.gui, 0 ]
let s:bg1     = [ s:colors.bg1.gui, 0 ]
let s:bg2     = [ s:colors.bg2.gui, 0 ]
let s:bg3     = [ s:colors.bg3.gui, 0 ]
let s:bg4     = [ s:colors.bg4.gui, 0 ]

let s:black   = [ s:colors.black.gui, 0 ]
let s:red     = [ s:colors.red.gui, 0 ]
let s:green   = [ s:colors.green.gui, 0 ]
let s:yellow  = [ s:colors.yellow.gui, 0 ]
let s:blue    = [ s:colors.blue.gui, 0 ]
let s:magenta = [ s:colors.magenta.gui, 0 ]
let s:cyan    = [ s:colors.cyan.gui, 0 ]
let s:white   = [ s:colors.white.gui, 0 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:fg, s:bg ], [ s:fg1, s:bg ] ]
let s:p.insert.left     = [ [ s:bg, s:green ], [ s:green, s:bg ] ]
let s:p.visual.left     = [ [ s:bg, s:magenta ], [ s:magenta, s:bg ] ]
let s:p.replace.left    = [ [ s:bg, s:blue ], [ s:blue, s:bg ] ]

let s:p.inactive.right  = [ [ s:fg2, s:bg ], [ s:fg2, s:bg ] ]
let s:p.inactive.left   = [ [ s:fg2, s:bg ], [ s:fg2, s:bg ] ]
let s:p.inactive.middle = [ [ s:fg2, s:bg ] ]

let s:p.normal.middle   = [ [ s:fg2, s:bg ] ]
let s:p.normal.error    = [ [ s:red, s:bg ] ]
let s:p.normal.warning  = [ [ s:yellow, s:bg ] ]

let s:p.tabline.left    = [ [ s:fg, s:bg2 ] ]
let s:p.tabline.tabsel  = [ [ s:fg, s:bg ] ]
let s:p.tabline.middle  = [ [ s:fg1, s:bg2 ] ]

let s:p.normal.right    = [ [ s:fg1, s:bg ], [ s:fg1, s:bg ] ]
let s:p.insert.right    = [ [ s:green, s:bg ], [ s:green, s:bg ] ]
let s:p.visual.right    = [ [ s:magenta, s:bg ], [ s:magenta, s:bg ] ]
let s:p.replace.right   = [ [ s:blue, s:bg ], [ s:blue, s:bg ] ]
let s:p.tabline.right   = copy(s:p.tabline.left)

let g:lightline#colorscheme#home#palette = lightline#colorscheme#flatten(s:p)

