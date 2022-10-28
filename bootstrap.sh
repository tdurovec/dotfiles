apt-get update && apt-get upgrade -y

# install Python3.10
apt-get install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt-get install -y python3.10 curl
sudo apt-get install python3.10-distutils
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10

update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 2

apt-get install neovim -y

mkdir /home/vagrant/.config/
mkdir /home/vagrant/.config/nvim/
touch /home/vagrant/.config/nvim/init.vim

echo '
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

nnoremap <BS> <Del>
xnoremap <BS> <Del>

vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <C-s> :w <CR>

nnoremap <C-l> e
nnoremap <C-h> b

vnoremap <C-l> e
vnoremap <C-h> b

' >> /home/vagrant/.config/nvim/init.vim

echo '
alias python="python3"
cd /vagrant
' >> /home/vagrant/.bashrc
