
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'https://github.com/folke/tokyonight.nvim.git'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'tpope/vim-commentary'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

set encoding=UTF-8

call plug#end()

nnoremap <C-b> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

nnoremap <BS> <Del>
xnoremap <BS> <Del>

vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <C-s> :w <CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p>Telescope buffers<cr>

nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

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

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
