" Basic setup
" Leader key
let mapleader=","

" enter the current millenium
set nocompatible

" backspace behaviour
set backspace=indent,eol,start
set background=dark

" numbers and syntax, and plugins
set number relativenumber
set expandtab
set autoindent
set smartindent
set cindent
set shiftwidth=2
set tabstop=2
" set softtabstop=2
set expandtab
set copyindent


syntax enable
filetype plugin indent on
filetype plugin on

" Finding file

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Tag jumping

" Creating the `tags` file (install ctags first)
command! MakeTags !ctags -R

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'junegunn/vim-easy-align'
Plug 'jalvesaq/Nvim-R'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()
