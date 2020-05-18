" Basic settings

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

execute pathogen#infect()

filetype plugin indent on
syntax on
set nocompatible
set encoding=utf-8
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmode
set wildmenu
set ai
set smartindent
set number
set relativenumber
set hidden
set history=100
set ruler
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set wrap
set linebreak

autocmd FileType c setlocal commentstring=//%s

nnoremap <tab> %
vnoremap <tab> %
inoremap jk <ESC>
map <C-p> :NERDTreeToggle<CR>
map <C-t> :Files<CR>
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

let mapleader=" "
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme onedark
let g:airline_theme='onehalfdark'
let g:airline#extensions#whitespace#enabled=0


