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
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set encoding=utf-8

" ========================
" Mappings  
" ========================

let mapleader=" "

"Configuracion para easymotion entrando con 4 caracteres
nmap <Leader>s <Plug>(easymotion-s2)

" NerdTree
nmap <Leader>nt :NERDTreeFind<CR>

" Atajos de teclado
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nmap <c-j> 9j
nmap <c-k> 9k
nmap <Leader>bn :bn<CR>
nmap <Leader>be :bdelete<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>fj :%!jq<Space>.<CR>

" for go debugguer 
nmap <Leader>1 :GoDebugContinue<CR>
nmap <Leader>2 :GoDebugStep<CR>
nmap <Leader>3 :GoDebugNext<CR>
nmap <Leader>0 :GoDebugStop<CR>
nmap <Leader>9 :GoDebugBreakpoint<CR>
nmap <Leader>6 :GoDebugTestFunc<CR>

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
"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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
let g:NERDTreeWinSize=60

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
set completeopt+=preview

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

"=======================
" GO
"=======================

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
 let g:go_highlight_variable_assignments = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
 let g:go_highlight_fields = 1
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']

let g:go_debug_mappings = {
\ '(go-debug-continue)': {'key': '1', 'arguments': '<nowait>'},
\ '(go-debug-stop)': {'key': '0'},
\ '(go-debug-next)': {'key': '2', 'arguments': '<nowait>'},
\ '(go-debug-step)': {'key': '3'},
\}
<

let g:go_debug_windows = {
\ 'out':      'botright 8new',
\ 'stack':      'botright 8new',
\ 'vars':       'botright 90vnew',
\ }

"=======================================
"Telescope
"=======================================
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
