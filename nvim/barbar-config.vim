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
nnoremap <silent>    <C-PageUp> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-PageDown> <Cmd>BufferNext<CR>

" tab colors
highlight BufferCurrent ctermfg=0 ctermbg=7 cterm=bold
highlight BufferCurrentSign ctermfg=0 ctermbg=0
highlight BufferCurrentIcon ctermfg=130 ctermbg=7
highlight BufferCurrentMod ctermfg=88 ctermbg=7 cterm=bold
highlight BufferCurrentModSign ctermfg=0 ctermbg=0
" highlight BufferCurrentModIcon ctermfg=130 ctermbg=7
highlight BufferInactive ctermfg=7 ctermbg=236
highlight BufferInactiveSign ctermfg=0 ctermbg=236
highlight BufferInactiveIcon ctermfg=243 ctermbg=236
highlight BufferInactiveMod ctermfg=172 ctermbg=236
highlight BufferInactiveModSign ctermfg=0 ctermbg=0
" highlight BufferInactiveModIcon ctermfg=130 ctermbg=7
