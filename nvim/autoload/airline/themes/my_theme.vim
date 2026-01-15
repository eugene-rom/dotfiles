" Normal mode
" (Dark)
let s:N1 = [ '#ffff00' , '#000087' , 226 , 18  ] " guifg guibg ctermfg ctermbg
let s:N2 = [ '#3a3a3a' , '#bcbcbc' , 237 , 250 ] " guifg guibg ctermfg ctermbg
let s:N3 = [ '#262626' , '#5fff87' , 235 , 84  ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ '#005f87' , '#ffff00' , 24  , 226 ] " guifg guibg ctermfg ctermbg
let s:I2 = [ '#3a3a3a' , '#bcbcbc' , 237 , 250 ] " guifg guibg ctermfg ctermbg
let s:I3 = [ '#262626' , '#5fff87' , 235 , 84  ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ '#d7afaf' , '#000087' , 181 , 18  ] " guifg guibg ctermfg ctermbg
let s:V2 = [ '#3a3a3a' , '#bcbcbc' , 237 , 250 ] " guifg guibg ctermfg ctermbg
let s:V3 = [ '#262626' , '#5fff87' , 235 , 84  ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ '#005f87' , '#ff5f00' , 24  , 202 ] " guifg guibg ctermfg ctermbg

let g:airline#themes#my_theme#palette = {}
let g:airline#themes#my_theme#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#my_theme#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#my_theme#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#my_theme#palette.replace = copy(g:airline#themes#my_theme#palette.normal)
let g:airline#themes#my_theme#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#my_theme#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

