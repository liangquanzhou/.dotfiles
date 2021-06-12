" Ref: http://www.ruanyifeng.com/blog/2018/09/vimrc.html
" https://github.com/ChristianChiarulli/nvim/blob/master/general/settings.vim

" 1. Basic settings

" leader key
let mapleader=","

" no compatible with vi, set this to enable new features
set nocompatible

" encoding settings
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,usc-bom,gb18030,gbk,gb2312,cp936

" enable true color (https://lotabout.me/2018/true-color-for-tmux-and-vim/)
set termguicolors

" syntax highlighting
syntax on

" define backspace key behaviour
set backspace=indent,eol,start

" background color
set background=dark

" don't show mode (airline or lightline plugin)
set noshowmode

" recommended by coc
set nobackup
set nowritebackup

" show command in command mode
set showcmd

" support mouse
set mouse=a

" enable filetype indent settings
filetype plugin indent on
filetype plugin on

" enable 256 color
set t_Co=256

" disable Background color erase (https://superuser.com/questions/399296/256-color-support-for-vim-background-in-tmux)
set t_ut=

" use zsh as thell
set shell=/usr/local/bin/zsh

" systemwide clipboard
set clipboard=unnamed
set rtp+=/usr/local/opt/fzf

" Required to keep multiple buffers open multiple buffers
set hidden 

" treat dash separated words as a word text object
set iskeyword+=-

"" Stop newline continution of comment
"set formatoptions-=cro

" 2. Indent settings 

" keep indent after press Enter
set autoindent

" how many spaces if press Tab key alone
set tabstop=4

" how many spaces for shiftwidth (press >> or << in normal mode)
set shiftwidth=4

" this settings transform Tab to spaces
set expandtab

" treat 4 spaces as a tab
set softtabstop=4

" smartindent
set smartindent
set cindent

" 3. Display settings

" show line number and relativenumber
set number 
set relativenumber

" highlight current line
set cursorline

" textwidth
"set textwidth=100

" show cursor position all the time
set ruler

" set wrap
set wrap
set wrapmargin=2

" Display all matching files when we tab complete, in command line mode
set wildmenu
"set wildmode=longest:list,full

" always show the signcolumn, otherwise it would shift the text each times 
set signcolumn=yes

" split window setting
set splitright
set splitbelow

" 4. Search settings

" highlight search result
set hlsearch
hi Search ctermbg=Yellow
hi Search ctermfg=Red

" set case inseneitive, to remove it, set noic
set ignorecase

" smart case: when both apply ignorecase and smart case, upper font won't
" match lower font, lower font will match upper font
set smartcase

" incomplete search
set incsearch

" match brankets
set showmatch

" 5. Editing settings

" apply macros together
set lazyredraw

" spell check
"set spell spelllang=en_us

" auto change working dir
set autochdir

" 6. Misc

" no error and visual bells
set noerrorbells
set novisualbell
set t_vb=

" history size
set history=10000

" monitor editing (https://github.com/neovim/neovim/issues/1936)
set autoread
au FocusGained * :checktime

" timeout settings
"set timeout           " for mappings
set timeoutlen=1000    " default value is 1000
""set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value

" Don't pass messages to |ins-completion-menu|
set shortmess+=c

" 打开文件时回复光标位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Finding file
" Search down into subfolders
" Provides tab-completion for all file-related tasks
"set path+=**

set undofile
"set undodir=$HOME/.local/share/nvim/undodir
"set foldmethod=indent
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END


"https://github.com/tmux/tmux/issues/2059
"let &t_SI = "\e[5 q"
"let &t_EI = "\e[2 q"
