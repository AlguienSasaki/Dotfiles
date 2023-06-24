"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
"
"███╗   ██╗██╗   ██╗██╗███╗   ███╗
"████╗  ██║██║   ██║██║████╗ ████║
"██╔██╗ ██║██║   ██║██║██╔████╔██║
"██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"                                 
"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

set number
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
set encoding=UTF-8
set mouse=

"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

call plug#begin('~/.config/nvim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

let NERDTreeQuitOnOpen=1
let g:airline_powerline_fonts = 1
let mapleader=" "
let g:user_emmet_leader_key='<C-y>'

imap <C-y> <C-y>,

"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

function! NumberToggle()
  if(&rnu == 1)
    set nornu nonu 
  else
    set rnu nu
  endif
endfunc

"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
nmap <Leader>f <Plug>(easymotion-s2)
nmap <Leader>r :NERDTreeFind<CR> 
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>n :call NumberToggle()<cr>

"_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
