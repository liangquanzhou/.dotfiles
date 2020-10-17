
"" vim-plug settings
" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

" Plugins
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'tomasr/molokai'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'sbdchd/neoformat'
"Plug 'jalvesaq/Nvim-R'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'honza/vim-snippets'
Plug 'zxqfl/tabnine-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/taglist.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
"Plug 'bling/vim-bufferline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'lfv89/vim-interestingwords'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'lyokha/vim-xkbswitch'
Plug 'tomasiser/vim-code-dark'
Plug 'dunstontc/vim-vscode-theme'
Plug 'vim-scripts/dbext.vim'
"Plug 'lilydjwg/fcitx.vim'
" Initialize plugin system
call plug#end()

" Leader key
let mapleader=","
" quick swithch between buffers
"nnoremap <leader><S-p> :bprevious<CR>
"nnoremap <leader><S-n> :bnext<CR>
" delete buffer
"nnoremap <leader>bd :bufferdelete<CR>

" enter the current millenium
"set nocompatible
" encoding set to utf-8
set encoding=utf-8
" backspace behaviour
set backspace=indent,eol,start
set background=dark

set noshowmode

set lazyredraw
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
set shiftwidth=4
set tabstop=4
" set softtabstop=2
set expandtab
set copyindent
set hidden " save buffer without saving

nmap <leader>p <Plug>AirlineSelectPrevTab
nmap <leader>n <Plug>AirlineSelectNextTab

" enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

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

function GetCurFilePath()
    let cur_dir=getcwd()
    let cur_file_name=getreg('%')
    let dir_filename=cur_dir."/".cur_file_name
    echo dir_filename."         done"
    call setreg('+',dir_filename)
endfunction

nnoremap <leader>fp : call GetCurFilePath()<cr>


let g:rainbow_active=1
highlight Pmenu ctermbg=gray guibg=DarkGray

let g:XkbSwitchEnabled = 1
set t_Co=256
set t_ut=
"let g:codedark_conservative = 1
"colorscheme codedark
colorscheme molokai
"let g:molokai_original = 1
let g:rehash256 = 1
let g:omni_sql_no_default_maps = 1

" sql formatter: sqlparse
let g:neoformat_python_sqlparse = {
            \ 'exe': 'sqlparse',
            \ 'args': ['comma_first=True'],
            \ }

let g:neoformat_enabled_sql = ['sqlparse']

