" Basic setup

" enter the current millenium
set nocompatible
" backspace behaviour
set backspace=indent,eol,start

" numbers and syntax, and plugins
set number
syntax enable
filetype plugin on

" Finding files

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Tag jumping

" Creating the `tags` file (install ctags first)
command! MakeTags !ctags -R
