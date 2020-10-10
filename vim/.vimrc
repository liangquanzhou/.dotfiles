" Leader key
let mapleader=","
" quick swithch between buffers
nnoremap <leader><S-p> :bprevious<CR>
nnoremap <leader><S-n> :bnext<CR>
" delete buffer
nnoremap <leader>bd :bufferdelete<CR>

" enter the current millenium
set nocompatible
" encoding set to utf-8
set encoding=utf-8
" backspace behaviour
set backspace=indent,eol,start
set background=dark

"" search settings
" highlight search result
set hlsearch
" set case inseneitive, to remove it, set noic
set ignorecase
" incomplete search
set incsearch

" clear search highlight by pressing C-l
nnoremap <silent><C-l> :noh<CR> 
" edit vimrc shortcut
nnoremap <leader>ev :vsp $MYVIMRC<CR>
" source vimrc shortcut
nnoremap <leader>sv :source $MYVIMRC<CR>
" delete trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" toggle nerd tree
nnoremap <silent> <leader><C-n> :NERDTreeToggle<CR>
" remap x to tabclose
nnoremap <leader>x :tabclose<CR>
" use zsh as thell
set shell=/usr/local/bin/zsh

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
set hidden " save buffer without saving
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tab_count = 1

let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1

nmap <leader>p <Plug>AirlineSelectPrevTab
nmap <leader>n <Plug>AirlineSelectNextTab

" CtrlSpace settings
let g:CtrlSpaceSetDefaultMapping = 1
let g:CtrlSpaceDefaultMappingKey = "<leader><space>"
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

" systemwide clipboard
set clipboard=unnamed
"set rtp+=/usr/local/opt/fzf

syntax on
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

"" vim-plug settings
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'junegunn/vim-easy-align'
"Plug 'jalvesaq/Nvim-R'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'honza/vim-snippets'
Plug 'zxqfl/tabnine-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/taglist.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'bling/vim-bufferline'
Plug 'scrooloose/nerdtree'
"Plug 'mhinz/vim-startify'
Plug 'lfv89/vim-interestingwords'
Plug 'vim-ctrlspace/vim-ctrlspace'
" Initialize plugin system
call plug#end()

let g:rainbow_active=1
highlight Pmenu ctermbg=gray guibg=DarkGray

