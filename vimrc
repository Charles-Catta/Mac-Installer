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
set showmatch         " Highlight matching [{()}]
set mousefocus        " Window with mouse pointer becomes active

if has("gui_running")
  colorscheme evening   " Set color scheme
  set bg=dark           " Set background to dark
  set antialias         " Antialias font in GUI Vims
  set noeb vb t_vb=     " No error bells
endif
" -------------- Search Settings -------------------
set incsearch         " Search as characters are entered
set hlsearch          " Highlight matches

" -------------- Movement Settings -----------------
set backspace=indent,eol,start  " Make backspace work normally

" -------------- PLUGINS ---------------------------
call plug#begin('~/.vim/plugged')

Plug 'yggdroot/indentline' " displays thin vertical lines at each indentation level 
" Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'} " C++ syntax highlighting 
Plug 'gregsexton/matchtag', {'for': 'html'}  " Matches HTML tags
" Plug 'jiangmiao/auto-pairs' " Auto insert/delete brackets and quotes in pair
Plug 'pangloss/vim-javascript', {'for': 'js'}  " Javascript Syntax
Plug 'hail2u/vim-css3-syntax', {'for': 'css'} " CSS syntax
" Plug 'mattn/emmet-vim', {'for': 'html'}    " Emmet
" Plug 'easymotion/vim-easymotion'        " EasyMotion for fast moving around
" Plug 'tpope/vim-surround'           " Surround to change surround quotes
Plug 'scrooloose/nerdtree'          " Display file tree
Plug 'elzr/vim-json'                " Better JSON Support
Plug 'scrooloose/syntastic'         " Syntax checker
Plug 'shougo/neocomplcache.vim'     " Autocompleter
Plug 'rizzatti/dash.vim'            " Dash integration
call plug#end()
" -------------- PLUGIN SETTINGS -------------------
let g:vim_json_syntax_conceal = 0   " Don't conceal double quotes
let g:syntastic_check_on_open = 1   " Syntax check on open
let g:syntastic_check_on_wq = 1     " Syntax check on :wq
let g:neocomplcache_enable_at_startup = 1 " Start autocompleter

" -------------- LINTER SETTINGS -------------------
let g:syntastic_python_checkers = ['flake8']  " Use flake8 for python

" -------------- AUTOCOMPLETER SETTINGS -------------------
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"  " TAB autocomplete
let g:neocomplcache_enable_camel_case_completion = 1    " Camel case completion
let g:neocomplcache_enable_underbar_completion = 1      " Underbar completion
let g:neocomplcache_min_syntax_length = 3               " Minimum of 3 characters
let g:neocomplcache_enable_auto_select = 1              " Auto select first
