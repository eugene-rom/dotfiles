" Normal mode
" (Dark)
let s:N1 = [ '' , '' , 3   , 18  ] " guifg guibg ctermfg ctermbg
let s:N2 = [ '' , '' , 237 , 250 ] " guifg guibg ctermfg ctermbg
let s:N3 = [ '' , '' , 235 , 84  ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ '' , '' , 24  , 3   ] " guifg guibg ctermfg ctermbg
let s:I2 = [ '' , '' , 237 , 250 ] " guifg guibg ctermfg ctermbg
let s:I3 = [ '' , '' , 235 , 84  ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ '' , '' , 181 , 18  ] " guifg guibg ctermfg ctermbg
let s:V2 = [ '' , '' , 237 , 250 ] " guifg guibg ctermfg ctermbg
let s:V3 = [ '' , '' , 235 , 84  ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ '' , '' , 24  , 202 ] " guifg guibg ctermfg ctermbg

let g:airline#themes#my_theme#palette = {}

let g:airline#themes#my_theme#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#my_theme#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#my_theme#palette.insert_replace = {
            \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#my_theme#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#my_theme#palette.replace = copy(g:airline#themes#my_theme#palette.normal)
let g:airline#themes#my_theme#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#my_theme#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

