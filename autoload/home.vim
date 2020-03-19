let s:daycolors = {
            \ 'black'   : { 'gui' : '#404042' },
            \ 'red'     : { 'gui' : '#BD6489' },
            \ 'green'   : { 'gui' : '#8C977E' },
            \ 'yellow'  : { 'gui' : '#C1A975' },
            \ 'blue'    : { 'gui' : '#495996' },
            \ 'magenta' : { 'gui' : '#804791' },
            \ 'cyan'    : { 'gui' : '#75898E' },
            \ 'white'   : { 'gui' : '#ADADAE' },
            \
            \ 'fg'      : { 'gui' : '#404042' },
            \
            \ 'bg'      : { 'gui' : '#efeff1' },
            \ 'bg1'     : { 'gui' : '#e9e9eb' },
            \ 'bg2'     : { 'gui' : '#e1e1e3' },
            \ 'bg3'     : { 'gui' : '#d9d9db' },
            \ 'bg4'     : { 'gui' : '#d1d1d3' },
            \ }

let s:nightcolors = {
            \ 'black'   : { 'gui' : '#404042' },
            \ 'red'     : { 'gui' : '#BD6489' },
            \ 'green'   : { 'gui' : '#8C977E' },
            \ 'yellow'  : { 'gui' : '#C1A975' },
            \ 'blue'    : { 'gui' : '#495996' },
            \ 'magenta' : { 'gui' : '#804791' },
            \ 'cyan'    : { 'gui' : '#75898E' },
            \ 'white'   : { 'gui' : '#ADADAE' },
            \
            \ 'fg'      : { 'gui' : '#404042' },
            \
            \ 'bg'      : { 'gui' : '#efeff1' },
            \ 'bg1'     : { 'gui' : '#e9e9eb' },
            \ 'bg2'     : { 'gui' : '#e1e1e3' },
            \ 'bg3'     : { 'gui' : '#d9d9db' },
            \ 'bg4'     : { 'gui' : '#d1d1d3' },
            \ }

function! home#getDayColors()
    return s:daycolors
endfunction

function! home#getNightColors()
    return s:nightcolors
endfunction

