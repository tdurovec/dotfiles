set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
call plug#begin()

Plug 'https://github.com/preservim/nerdtree' 
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'https://github.com/folke/tokyonight.nvim.git'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
set encoding=UTF-8

call plug#end()

nnoremap <C-b> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

nnoremap <BS> <Del>
xnoremap <BS> <Del>

vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <C-s> :w <CR>

nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

nnoremap  <M-m> :FloatermNew<CR>
tnoremap  <M-m> <C-\><C-n>:FloatermNew<CR>

tnoremap  <M-1> <C-\><C-n> :FloatermToggle<CR>
nnoremap  <M-1> :FloatermToggle<CR>

tnoremap   <left>   <C-\><C-n>:FloatermPrev<CR>
tnoremap   <right>   <C-\><C-n>:FloatermNext<CR>

nnorema <C-l> e
nnoremap <C-h> b

vnoremap <C-l> e
vnoremap <C-h> b


hi Pmenu ctermbg=darkgrey ctermfg=white


" Attempt to disable and hide Coc diagnostics
let b:coc_diagnostic_disable=1
let b:coc_diagnostic_info={'information': 0, 'hint': 0, 'lnums': [0, 0, 0, 0], 'warning': 0, 'error': 0}

set mouse=a

syntax on
colorscheme tokyonight 
filetype on
filetype plugin indent on

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
