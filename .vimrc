" Basic settings

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

