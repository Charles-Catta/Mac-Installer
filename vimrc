let mapleader = "\<Space>"

" -------------- Tab Settings ----------------------
set tabstop=2         " Number of spaces that a <Tab> in the file counts for
set softtabstop=2     " Number of spaces in a tab when editing
set expandtab         " Use the appropriate number of spaces to insert a <Tab>
set autoindent        " Copy indent from current line when starting a new line
set smarttab          " Makes tabs generally smarter
set smartindent       " Do smart autoindenting when starting a new line
set shiftwidth=2        " Number of spaces to use for each step of (auto)indent

" -------------- UI Settings -----------------------
set bsdir="current"   " Use current directory for file browser
set number            " Show line numbers
set rnu               " Relative line numbers
set showcmd           " Show command in bottom bar
set wildmenu          " Visual autocomplete for command menu
set mousefocus        " Window with mouse pointer becomes active
set laststatus=2      " Always show the status line at the bottom

if has("gui_running")
  colorscheme evening   " Set color scheme
  set bg=dark           " Set background to dark
  set antialias         " Antialias font in GUI Vims
  set noeb vb t_vb=     " No error bells
endif

" -------------- Search Settings -------------------
set incsearch         " Search as characters are entered
set hlsearch          " Highlight matches
set ignorecase        " case insensitive search
set smartcase         " case sensitive search when search term is mixed case


" -------------- Movement Settings -----------------
set backspace=indent,eol,start  " Make backspace work normally
nmap Q <Nop>          " 'Q' in normal mode enters Ex mode, it's annoying
" Disable arrow keys in normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" -------------- PLUGINS ---------------------------
call plug#begin('~/.vim/plugged')

Plug 'yggdroot/indentline' " displays thin vertical lines at each indentation level
Plug 'jiangmiao/auto-pairs' " Auto insert/delete brackets and quotes in pair
Plug 'easymotion/vim-easymotion'        " EasyMotion for fast moving around
Plug 'tpope/vim-surround'           " Surround to change surround quotes
Plug 'scrooloose/nerdtree'          " Display file tree
Plug 'elzr/vim-json'                " Better JSON Support
call plug#end()

" -------------- PLUGIN SETTINGS -------------------
let g:vim_json_syntax_conceal = 0   " Don't conceal double quotes
