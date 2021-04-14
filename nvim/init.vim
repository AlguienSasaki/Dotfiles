set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber


call plug#begin('~/.config/nvim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let NERDTreeQuitOnOpen=1
let g:airline_powerline_fonts = 1
let mapleader=" "

nmap <Leader>f <Plug>(easymotion-s2)
nmap <Leader>r :NERDTreeFind<CR> 
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>Q :q!<CR>
