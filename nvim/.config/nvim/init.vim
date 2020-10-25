" -------------------- vim-plug settings --------------------
" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

" Plugins
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdcommenter'
Plug 'kassio/neoterm'
Plug 'rizzatti/dash.vim'
Plug 'sillybun/vim-repl'
Plug 'Yggdroot/indentLine'
Plug 'tomasr/molokai'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'sbdchd/neoformat'

" R language support
Plug 'jalvesaq/Nvim-R'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'roxma/nvim-yarp'
Plug 'gaalcaras/ncm-R'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}

" vim snippets
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'
"Plug 'lervag/vimtex'
Plug 'simnalamburt/vim-mundo'
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

" 基础设置
" -------------------- Leader key --------------------
let mapleader=","

" ----- buffer option -----
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
set splitright
set splitbelow

set lazyredraw
"" search settings
" highlight search result
set hlsearch
" set case inseneitive, to remove it, set noic
set ignorecase
" incomplete search
set incsearch

" timeout settings
set timeout           " for mappings
set timeoutlen=1000   " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value

" 打开文件时回复光标位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" some tricks from https://github.com/wsdjeg/vim-galore-zh_cn
" searhing behaviour: n always forward, N always backward
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" 命令模式下方向键
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" 禁用报警声音和图标
set noerrorbells
set novisualbell
set t_vb=

" 快速移动当前行
nnoremap [e  :<C-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<C-u>execute 'move +'. v:count1<cr>

" 防止水平滑动时失去选择
"xnoremap < :<gv
"xnoremap > :>gv

" 当前行高亮
"autocmd InsertLeave,WinEnter * set cursorline
"autocmd InsertEnter,WinLeave * set nocursorline

" clear search highlight by pressing C-l
"nnoremap <silent><C-l> :noh<CR> 
nnoremap <silent><C-l> :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

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

nnoremap <leader>r :REPLToggle
nnoremap <leader>l: TREPLSendLine

nnoremap <leader>cp : <esc>ggVGy<C-o><CR>

" comment settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 0

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" languageserver for R 
let g:LanguageClient_serverCommands = {
    \ 'r': ['R', '--slave', '-e', 'languageserver::run()'],
    \ }

set undofile
set undodir=$HOME"/.local/share/nvim/undodir"
nnoremap <leader>u :MundoToggle<CR>

