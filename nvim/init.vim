call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'lewis6991/gitsigns.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'romgrk/barbar.nvim'

call plug#end()

set mouse=a 
set number
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set clipboard=unnamedplus
set nowrap
set showtabline=2
" set termguicolors

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='my_theme'

lua require('scrollbar').setup()
" lua require('gitsigns').setup()
" lua require('scrollbar.handlers.gitsigns').setup()


execute 'source' stdpath('config') . '/coc-config.vim'
execute 'source' stdpath('config') . '/barbar-config.vim'

" KEYBINDINGS

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" For local replace (inside block)
nnoremap lr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
" nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" save ctrl-s
nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>

" auto trim trailing spaces on save
lua << EOF
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
      local save_cursor = vim.fn.getpos(".")
	  vim.cmd([[%s/\s\+$//e]])
      vim.fn.setpos(".", save_cursor)
    end,
  })
EOF
