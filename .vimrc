" Basic settings

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

execute pathogen#infect()

" Editor settings
filetype plugin indent on
syntax on
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmode
set smartindent
set number
set relativenumber
set hidden
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set wrap
set linebreak
set mouse=a

" Very magic by default
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

" Persistent undo
set undodir=~/.vim/undodir
set undofile

autocmd FileType c setlocal commentstring=//%s

" Remaps
nnoremap <tab> %
vnoremap <tab> %
noremap Q !!sh<CR>
inoremap jk <ESC>
map <C-p> :NERDTreeToggle<CR>
map <C-t> :Files<CR>
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

let mapleader=" "
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" True color support
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Appearance
set background=dark
let base16colorspace=256

colorscheme base16-gruvbox-dark-hard

let g:airline_theme='base16_atelier_dune'
let g:airline#extensions#whitespace#enabled=0


