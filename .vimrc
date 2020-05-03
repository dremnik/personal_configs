" Basic settings

syntax on
set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set clipboard=unnamedplus
filetype plugin indent on
set showmode
set wildmenu
set autoindent
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

nnoremap <tab> %
vnoremap <tab> %
inoremap jk <ESC>
let mapleader=" "
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme onedark

