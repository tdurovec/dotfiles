:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
call plug#begin()

Plug 'https://github.com/preservim/nerdtree' 
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'https://github.com/folke/tokyonight.nvim.git'

set encoding=UTF-8

call plug#end()

nnoremap <C-b> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

nnoremap <BS> <Del>
xnoremap <BS> <Del>

vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <C-s> :w <CR>

nnoremap  <S-Tab> :BufferPrevious<CR>
nnoremap  <Tab> :BufferNext<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>
nnoremap <silent>    <A-p> :BufferPin<CR>

nnoremap <A-j>    :resize -2<CR>
nnoremap <A-k>    :resize +2<CR>
nnoremap <A-h>    :vertical resize -2<CR>
nnoremap <A-l>    :vertical resize +2<CR>

nnoremap <A-q> :q <CR>

nnoremap <C-l> e
nnoremap <C-h> b

vnoremap <C-l> e
vnoremap <C-h> b

noremap <C-y> v

noremap <C-j> 5j
noremap <C-k> 5k

vnoremap <C-y> "+y

function! s:check_back_space() abort
  let col = col('.') - 1

    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
hi Pmenu ctermbg=darkgrey ctermfg=white


" Attempt to disable and hide Coc diagnostics
let b:coc_diagnostic_disable=1
let b:coc_diagnostic_info={'information': 0, 'hint': 0, 'lnums': [0, 0, 0, 0], 'warning': 0, 'error': 0}

set mouse=a

syntax on
colorscheme tokyonight 
filetype on
filetype plugin indent on
