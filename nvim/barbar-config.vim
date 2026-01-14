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
