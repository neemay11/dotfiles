" -----------------------------------
" Neema Yousefi's vimrc
" -----------------------------------

set nocompatible
syntax enable
filetype indent on

" ----------Plugins----------

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"gutentags using rg to ignore certain files specified in .gitignore
let g:gutentags_file_list_command = 'rg --files'

let g:gundo_close_on_revert = 1
let g:gundo_preview_height = 25
let g:gundo_prefer_python3 = 1

let g:ale_sign_column_always = 1
let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 0

let g:airline_powerline_fonts = 1

" if executable('rg')
" 	let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
" 	let g:ctrlp_use_caching = 0
" endif

" ---------UI----------
highlight Pmenu ctermbg=grey guibg=grey
highlight clear SignColumn
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_set_highlights = 0
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_set_balloons = 1

let g:airline#extensions#ale#enabled = 1

" ----------Keybinds----------
nnoremap U :GundoToggle<CR>
nnoremap <Space> za
nnoremap <F8> :ALEFix<CR>

" ALE goto warinings/errors
nnoremap [g :ALEPreviousWrap<CR>
nnoremap ]g :ALENextWrap<CR>

" COC Completion
" <C-space> to start completion, tab to cycle, enter to select
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" makes j and k not skip over wrapped lines
noremap j gj
noremap k gk
noremap gj j
noremap gk k

nnoremap <C-p> :Files<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>h :History<CR>
nnoremap <leader>n :set relativenumber!<CR>
nnoremap <leader><space> :nohlsearch<CR>

" refresh vimrc
nnoremap <leader><F5> :source ~/.dotfiles/vimrc<CR>


" Basic Settings
set number
set relativenumber
set showcmd
set ruler
set cursorline
set lazyredraw
set wildmenu
set laststatus=2
set nomodeline
set clipboard=unnamed
set backspace=indent,eol,start
set cmdheight=2

" folding
set foldmethod=indent
set foldlevelstart=99

set incsearch
set hlsearch
" case-insensitive search, unless case is specified
set ignorecase
set smartcase


" ----------Functions----------
"
" spaces over tabs (tablen=number of columns in a tab)
function! Spaces(tablen)
	let &tabstop=a:tablen
	let &shiftwidth=a:tablen
	let &softtabstop=a:tablen
	set expandtab
endfunction

" tabs over spaces (tablen=number of spaces in a tab)
function! Tabs(tablen)
	let &tabstop=a:tablen
	let &shiftwidth=a:tablen
	let &softtabstop=a:tablen
	set noexpandtab
endfunction

call Spaces(2)

" COC specific stuff

set nobackup
set nowritebackup
set shortmess+=c
set updatetime=300

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
