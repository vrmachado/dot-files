""""""""""""""""""""""""
" General
""""""""""""""""""""""""

"Number of lines saved
set history=100

"vim, not vi
set nocompatible

"Leader key mapping
let mapleader = "\<space>"

" jk is escape
inoremap jk <esc>

"Saving key binding
nmap <leader>w :w!<cr>

"Quit binding
nnoremap <Leader>q :q!<cr>

"Shortcut to insert markdown code bllock
imap <F2> ```lang<CR>```

"Shortcut to insert a Date
imap <F3> ### <C-R>=strftime("%Y-%m-%d")<CR>

"shortcut to call Clang-Format
nnoremap <F4> :ClangFormat<CR>

"Shortcut to toggle Syntastic
nnoremap <F9> :SyntasticToggleMode<CR>
"Shortcut to remove auto line break
nnoremap <F8> :set formatoptions-=t<CR>


"Set standard encoding
set encoding=utf8


"swap, backup and backup skip directories
set dir=$HOME/tmp/
set bdir=$HOME/tmp/
set bsk=$HOME/tmp/

"Current line on status bar
set ruler
"Mode line on status bar
set modeline
set confirm
set title

let g:tex_flavor = "latex"
""""""""""""""""""""""""
" Text Editing
""""""""""""""""""""""""
set textwidth=80


"Number of visual spaces per TAB
set tabstop=4

set expandtab
"Number of of spaces in tab when editing
set softtabstop=4

"Shift width in spaces
set shiftwidth=4

"Search as characters are entered
set incsearch

"Highlight search matches
set hlsearch

"Turn off search highlight
nnoremap <leader>sh :nohlsearch<CR>

"Auto indentation
set autoindent

"Set backspace behavior
set backspace=indent,eol,start

" Copy/Paste integration
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

set smartindent
set smartcase

""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""
"Enable folding
set foldenable

"Level of folds opened by default
set foldlevelstart=10

"10 nested fold max
set foldnestmax=10

"Fold based on syntax level
set foldmethod=syntax
""""""""""""""""""""""""
" UI
""""""""""""""""""""""""
"Show matching brackets when cursor is over them
set showmatch

"Show line numbers
set number

"Highlight current line
set cursorline

"Autocomplete for command menu
set wildmenu
set wildmode=list:longest
set winheight=5

"Redraw only when needed
set lazyredraw

"Removes scrollbar and other stuff
set guioptions=agim

"Sets color for column 80
set colorcolumn=80
""""""""""""""""""""""""
" vim-plug
""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
		Plug 'tpope/vim-surround'
		Plug 'bling/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'scrooloose/syntastic'
		Plug 'tpope/vim-fugitive'
		Plug 'altercation/vim-colors-solarized'
		Plug 'tpope/vim-markdown'
		Plug 'nelstrom/vim-markdown-folding'
		Plug 'vimwiki/vimwiki'
		Plug 'mateusbraga/vim-spell-pt-br'
		Plug 'itchyny/calendar.vim'
		Plug 'justinmk/vim-syntax-extra'
		Plug 'octol/vim-cpp-enhanced-highlight'
		Plug 'vim-python/python-syntax'
		Plug 'junegunn/goyo.vim'
		Plug 'kana/vim-operator-user'
		Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
		Plug 'junegunn/fzf.vim'
		Plug 'sjl/badwolf'
call plug#end()
""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nmap <F9> :SyntasticToggleMode<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:syntastic_cpp_compiler_options = '-std=c++17'

let g:python_highlight_all = 1
"""""""""""""""""""""""
" Vimwiki
""""""""""""""""""""""
let wiki = {}
let wiki.path = '~/vimwiki'
let wiki.path_html = '~/vimwiki'
let wiki.syntax = 'markdown'
let wiki.ext = '.md'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'c': 'c', 'sh': 'sh'}
let g:vimwiki_list = [wiki]
let g:vimwiki_folding = 'expr'
""""""""""""""""""""""""
" Colorscheme and Font
""""""""""""""""""""""""
set shortmess=I
"Background
set background=dark
colorscheme badwolf
set termguicolors
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

set title
set titleold=
