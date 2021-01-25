"=========================
" configuraciones generales
" =========================
set number 
set mouse 
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode


" ========================
" Mappings  
" ========================

let mapleader=" "

"Configuracion para easymotion entrando con 2 caracteres
nmap <Leader>s <Plug>(easymotion-s2)

" NerdTree
nmap <Leader>nt :NERDTreeFind<CR>

" Atajos de teclado
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>fj :%!jq<Space>.<CR>

" ========================
" Manejador de plugins
" ========================

call plug#begin('~/.vim/plugged')

"=========================
" Themes
"=========================

Plug 'morhetz/gruvbox'

"=========================
" Utils / IDE
"=========================

" Easy motion para facilitar el movimiento en el codigo 
Plug 'easymotion/vim-easymotion'
" Nerdtree
Plug 'scrooloose/nerdtree'
" Para movilizarte entre pantallas
Plug 'christoomey/vim-tmux-navigator'
" Vim-Go
Plug 'fatih/vim-go', {'do':':GoUpdateBinaries'}
"airlin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"bufferline
Plug 'bling/vim-bufferline'

call plug#end()

"=========================
" Themes configs
"=========================

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

"=========================
" NerdTree
"=========================

let NERDTreeQuitOnOpen=1

"=========================
"Kite
"=========================

" All the languages Kite supports
let g:kite_supported_languages = ['*']
set completeopt+=menuone
let g:kite_tab_complete=1
set completeopt+=preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg  " if vim beeps during completion
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line
set completeopt+=noinsert

"=======================
" Airline configs
"=======================

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='badwolf'
"BufferLine

let g:airline#extensions#bufferline#enabled = 1
