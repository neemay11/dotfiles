" -----------------------------------
" Neema Yousefi's vimrc
" -----------------------------------

" don't try to be vi compatible
set nocompatible

" ----------Plugins----------

call plug#begin('~/.vim/plugged')

" FzF -- fuzzy file finder
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" vinegar -- netrw enhancements
Plug 'tpope/vim-vinegar'

" seamless navigation between vim splits and tmux panes
Plug 'christoomey/vim-tmux-navigator'

" gundo -- visually see vim's undo tree
Plug 'sjl/gundo.vim'
nnoremap U :GundoToggle<CR>
let g:gundo_close_on_revert = 1

" commentary -- comment stuff out
Plug 'tpope/vim-commentary'

" fugitive -- git wrapper for vim
Plug 'tpope/vim-fugitive'

" surround -- easier quoting/parenthesizing
Plug 'tpope/vim-surround'

" ale -- lint as you type
Plug 'dense-analysis/ale'

" polygot -- language extensions
Plug 'sheerun/vim-polyglot'

" gutentags -- auto-generate tags files
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" ----------Plugin Settings----------

" FZF searching
nnoremap <C-p> :Files<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>h :History<CR>

" gutentags -- use ripgrep to resepct .gitignore
let g:gutentags_file_list_command = 'rg --files'

" gundo
nnoremap U :GundoToggle<CR>
let g:gundo_close_on_revert = 1

" ALE -- keep column always open
let g:ale_sign_column_always = 1

" ALE -- disable ale auto-highlighting
let g:ale_set_highlights = 0

" ----------UI----------

" show line numbers
set number

" show line numbers relative to current line
set relativenumber

" toggle relative line numbers
nnoremap <leader>n :set relativenumber!<CR>

" enable syntax highlighting
syntax enable

" enable enhanced tag matching
runtime macros/matchit.vim

" display in-progress commands on bottom of window
set showcmd

" shows cursor coordinates
set ruler

" underline the line where the cursor is located
set cursorline

" don't redraw the screen when not needed (like mid-macro)
set lazyredraw

" display a visual menu when using tab to autocomplete commands
set wildmenu

" reserve 2 lines for the status
set laststatus=2

" ----------Navigation----------

" backspace fix
set backspace=indent,eol,start

" makes j and k not skip over wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"  ----------Search----------

" search as you type
set incsearch

" searches are case insensitive
set ignorecase

" searches become case sensitive when entering an uppercase char
set smartcase

" highlight all matches
set hlsearch

" clears highlighted search items
nnoremap <leader><space> :nohlsearch<CR>

"  ----------Style----------

" indent newlines according to filetype specifications
filetype indent on

" set tab character width to be 4 columns
set tabstop=4

" set indentations from << and >> operations to be 4 whitespace units
set shiftwidth=4

" tab and backspace key insert/remove 4 whitespace units
set softtabstop=4

" pressing tab insterts tab characters instead of spaces
set noexpandtab

" spaces over tabs (tablen=number of spaces in a tab)
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

" ----------Folding----------

" fold text based on indentation
set foldmethod=indent

" default to everything unfolded
set foldlevelstart=99

" set space to open and close folds
nnoremap <Space> za

" ----------Other----------

" disable modeline
set nomodeline

" use system clipboard
set clipboard=unnamed

" refresh vimrc
nnoremap <leader><F5> :source ~/.dotfiles/vimrc<CR>
