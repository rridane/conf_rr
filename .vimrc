" Pré-requis pour installation
"
" Trouver le dossier d'installation de vim (Pour placer soit le vimrc soit le
" init.vim)
" :echo stdpath('config')
" 
"
" Installer vim-plug
"
" Sur Unix:
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Sur Windows (PowerShell):
"
" iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
" ni $HOME/vimfiles/autoload/plug.vim -Force
"
" 
" Installer le plug-in pour le theme
" :PlugInstall
"


call plug#begin()

Plug 'joshdick/onedark.vim'

call plug#end()


"Keep 1000 items in the history

set history=1000

" set the rsor position
set ruler

" show incomplete commands.
set showcmd

" shows a menu when using tab completion
set wildmenu

set scrolloff=5

set hlsearch

set incsearch

set ignorecase

set smartcase

" turn on line numbering
set number

set backup

set lbr

set ai

set si


" color scheme
colorscheme onedark

noremap <s-l> e
noremap <s-j> 4j
noremap <s-h> b
noremap <s-k> 4k

noremap <c-j> 15j
noremap <c-k> 15k

set visualbell
set noerrorbells

