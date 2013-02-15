
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin on

syntax on
set number
set title
set encoding=utf-8

" Tab sizing
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set noexpandtab

set autoindent
set nowrap
set backspace=indent,eol,start
set showmatch

" Search
set incsearch
set hlsearch
set smartcase

" Windows
set splitbelow
set splitright

" Enable spell checking
"set spell

" Gotta have a color scheme
color jeffs


" Plugins
map <C-n> :NERDTreeToggle<CR> " Toggle NERDTree on Control + N
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if only NERDTree left

let g:JSLintHighlightErrorLine = 1 " Highlight JavaScript errors
