"===================================
" init set configurations 
"===================================
set guicursor=
set scrolloff=20
set number
set rnu
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set termguicolors    
let ayucolor="dark" 
colorscheme ayu
"===================================
" Plugin manager 
"===================================
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()
"===================================
"Remaps 
"===================================

let mapleader=" "
nnoremap <leader>ft :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
vnoremap <leader>p "_dP 
vnoremap <leader>y "+y 
nnoremap <leader>Y gg"+yG

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
