 "=========================
" configuraciones generales
" =========================

set path+=**
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
set cmdheight=2
set formatoptions-=ro
set updatetime=50
set colorcolumn=100
set conceallevel=0
set tabstop=4 softtabstop=4
set shiftwidth=4
set noswapfile
set nobackup
set incsearch
set undodir=~/.vim/undodir
set undofile
highlight ColorColumn ctermbg=0 guibg=lightgrey

" ========================
" Mappings  
" ========================

let mapleader=" "

"Configuracion para easymotion entrando con 4 caracteres
nmap <Leader>s <Plug>(easymotion-s2)
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
" NerdTree
nmap <Leader>nt :NERDTreeFind<CR>

" Atajos de teclado
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nnoremap <silent> <leader>hn :nohlsearch<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>be :bdelete<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>fj :%!jq<Space>.<CR>
nmap <Leader>z ysiw

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"tmux navigation 
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

"rezise tmux pane
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

"quick semi
nnoremap <Leader>; $a;<Esc>

"for search 
map <Leader>ag :Ag<CR>
map <Leader>p :Files<CR>


"Faster scrolling
nnoremap <c-J> 10<c-e>
nnoremap <c-K> 10<c-y>

"buffer
map <Leader>ob :Buffers<cr>

"coding
nnoremap <Leader>x :!node %<cr>
nnoremap <Leader>kp :let @*=expand("%")<CR>

"moving
" Undo breaking points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap ( (<c-g>u
inoremap ) )<c-g>u
inoremap { {<c-g>u
inoremap } }<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u

" moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==
" ========================
" Manejador de plugins
" ========================

call plug#begin('~/.vim/plugged')

"=========================
" Themes
"=========================

Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
"=========================
" Utils / IDE
"=========================

" Easy motion para facilitar el movimiento en el codigo 
if exists('g:vscode')
Plug 'asvetliakov/vim-easymotion'
else
Plug 'easymotion/vim-easymotion'
endif
" Nerdtree
" Plug 'scrooloose/nerdtree'
" Coc
if !exists('g:vscode')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif
" Nerd commenter 
Plug 'preservim/nerdcommenter'
" Ale highlight
Plug 'dense-analysis/ale'
" Auto create a pair for a symbol
Plug 'jiangmiao/auto-pairs'
" surround 
Plug 'tpope/vim-surround'
" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
" lightline
" Plug 'itchyny/lightline.vim'
" Plug 'puremourning/vimspector'
" vim inspector to nodejs 
Plug 'eliba2/vim-node-inspect'
" Tabs
Plug 'ap/vim-buftabline'
" Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
" Test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'
" Iddent line
Plug 'yggdroot/indentline'
"harpoon
Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Neovim Tree shitter for highlight the syntax 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

"vim-devicons && nerdtree git plugin
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
	    \ Plug 'ryanoasis/vim-devicons'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'mbbill/undotree'

"git 
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'L3MON4D3/LuaSnip'

"Debugger
" Plug 'mfussenegger/nvim-dap" '
" Plug 'rcarriga/nvim-dap-ui'
" Plug 'theHamsta/nvim-dap-virtual-text'
" Plug 'nvim-telescope/telescope-dap.nvim'
" Plug 'Pocco81/DAPInstall.nvim'
call plug#end()

lua require("omfest")

"=========================
" git 
"=========================

nmap <Leader>gs :G<CR>
nmap <Leader>gh :diffget //2<CR>
nmap <Leader>gu :diffget //3<CR>
nmap <Leader>co :Git commit<CR>
nnoremap <Leader>gc :GCheckout<CR>
nnoremap <leader>ga :Git fetch --all<CR>

let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS= '--reverse'


"=========================
" NerdTree && devicons
"=========================

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=60

"devicons

set encoding=UTF8
let g:airline_powerline_fonts = 1

" nerd tree git plugin

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeLimitedSyntax = 1

nnoremap <leader>u :UndotreeShow<CR>

"=========================
" Themes configs
"=========================
set background=dark
colorscheme gruvbox
"colorscheme one 
let g:airline_theme = "murmur"
" let g:gruvbox_contrast_dark = "hard"
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


"=========================
"Coc
"=========================
"

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"===============================
" Ale
"===============================
let g:ale_disable_lsp = 1
" Fix files automatically on save
let g:ale_fixers = {}
let g:ale_javascript_eslint_use_global = 1
let g:ale_typescript_prettier_use_local_config = 1
let g:ale_linters = {
  \'javascript': ['eslint'],
  \'typescript': ['eslint'],
  \'vue': ['eslint', 'stylelint', 'tsserver'],
\}

let g:ale_fixers = {
  \'javascript': ['prettier', 'eslint'],
  \'typescript': ['prettier', 'eslint'],
  \'vue': ['eslint', 'stylelint'],
\}

let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
"===============================
" Nerd commenter 
"===============================

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
"
"
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
""===============================
" Light Line  
"===============================
set statusline+=%#warningmsg#
"===============================
" fzf 
"===============================


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

"===============================
" Testing
"===============================

nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

let g:vim_json_syntax_conceal = 1

"===============================
" treesitter 
"===============================

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
"===============================
" Harpoon 
"===============================

nnoremap <Leader>ht :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <Leader>ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <Leader>h1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <Leader>h5 :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <Leader>h2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <Leader>h3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <Leader>h4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <Leader>hc :lua require("harpoon.ui").nav_next()
nnoremap <Leader>hd :lua require("harpoon.ui").nav_prev()

nnoremap <Leader>t0 <c-a>q 0<CR>
nnoremap <Leader>t1 :lua require("harpoon.tmux").gotoTerminal(1)
nnoremap <Leader>t2 :lua require("harpoon.tmux").gotoTerminal(3)
"===============================
" neovim lsp
"===============================
" Do this in lua?? maybe...
" vim.o is short for something teej thinks makes sense.
set completeopt=menu,menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

fun! LspLocationList()
    " lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
endfun

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>

augroup THE_PRIMEAGEN_LSP
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
augroup END
