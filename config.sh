sudo apt install git zsh curl wget -y

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -

sudo apt update
sudo apt install nodejs
sudo apt install npm
sudo apt install tmux

mkdir /home/toso/.config/
mkdir /home/toso/.config/nvim/
touch /home/toso/.config/nvim/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo '
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


' >> /home/toso/.config/nvim/init.vim

echo "
set -g focus-events on

set -g history-limit 50000

# Enable color support inside of tmux.
set -g default-terminal "xterm-256color"
set -ga terminal-overrides ",*256col*:Tc"

# Send xterm compatible control arrow keys so they work with Vim.
setw -g xterm-keys on

# Ensure window titles get renamed automatically.
setw -g automatic-rename

# Ensure window index numbers get reordered on delete.
set-option -g renumber-windows on

# Start windows and panes index at 1, not 0.
set -g base-index 1
setw -g pane-base-index 1

# Enable full mouse support.
set -g mouse on

# Various colors.
set -g status-style fg=colour244
set -g window-status-current-style fg=colour222
set -g pane-border-style fg=colour240
set -g pane-active-border-style fg=colour243

set -g status-left ''
set -g status-left-length 0
set -g status-right ''
set -g status-right-length 0


# Unbind default keys
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# Reload the tmux config.
bind-key r source-file ~/.tmux.conf

# Split panes.
bind-key b split-window -v
bind-key v split-window -h

# Move around panes with ALT + arrow keys.
bind -r h resize-pane -L 5
bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5

bind-key -n M-k select-pane -U
bind-key -n M-j select-pane -D
bind-key -n M-h select-pane -L
bind-key -n M-l select-pane -R

bind-key -n pageup next-window
bind-key -n pagedown previous-window


# List of plugins.
set -g @plugin 'tmux-plugins/tmux-yank'
" >> /home/toso/.tmux.conf
