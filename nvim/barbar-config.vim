let g:barbar_auto_setup = v:false " disable auto-setup
lua << EOF
  require'barbar'.setup {
	insert_at_end = true,
	minimum_padding = 1,
	icons = {
		filetype = {
		  custom_colors = true,
		  enabled = true,
		},
	},
  }
EOF

" romgrk/barbar.nvim: Move to previous/next
nnoremap <silent>    <C-PageUp>   <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-PageDown> <Cmd>BufferNext<CR>
inoremap <silent>    <C-PageUp>   <Esc>:BufferPrevious<CR>
inoremap <silent>    <C-PageDown> <Esc>:BufferNext<CR>

" tab colors
highlight BufferCurrent         guifg=#d0d0d0 guibg=#303030 gui=bold ctermfg=252 ctermbg=236 cterm=bold
highlight BufferCurrentSign     guifg=#af5f00 guibg=#303030          ctermfg=130 ctermbg=236
highlight BufferCurrentIcon     guifg=#d0d0d0 guibg=#af5f00          ctermfg=252 ctermbg=130
highlight BufferCurrentMod      guifg=#d0d0d0 guibg=#870000 gui=bold ctermfg=252 ctermbg=88  cterm=bold
highlight BufferCurrentModSign  guifg=#d0d0d0 guibg=#af5f00          ctermfg=252 ctermbg=130
highlight BufferCurrentModIcon  guifg=#d0d0d0 guibg=#af5f00          ctermfg=252 ctermbg=130
highlight BufferInactive        guifg=#303030 guibg=#d0d0d0          ctermfg=236 ctermbg=252
highlight BufferInactiveSign    guifg=#303030 guibg=#303030          ctermfg=236 ctermbg=236
highlight BufferInactiveIcon    guifg=#303030 guibg=#767676          ctermfg=236 ctermbg=243
highlight BufferInactiveMod     guifg=#303030 guibg=#d78700          ctermfg=236 ctermbg=172
highlight BufferInactiveModSign guifg=#303030 guibg=#303030          ctermfg=236 ctermbg=236
highlight BufferTabpageFill     guifg=#303030 guibg=#d0d0d0          ctermfg=236 ctermbg=252

