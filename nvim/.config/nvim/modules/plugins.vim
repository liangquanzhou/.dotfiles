call plug#begin(stdpath('data') . '/plugged')

" Molokai theme
Plug 'tomasr/molokai'
" status bar
Plug 'itchyny/lightline.vim'
" show gitbrach in status bar
Plug 'itchyny/vim-gitbranch'
" show icons
Plug 'ryanoasis/vim-devicons'
" rainbow brankets
Plug 'luochen1990/rainbow'
" accelerated j k
Plug 'rhysd/accelerated-jk'
" show git changes
Plug 'airblade/vim-gitgutter'
" easy-align (https://github.com/junegunn/vim-easy-align)
Plug 'junegunn/vim-easy-align'
" show current word
Plug 'dominikduda/vim_current_word'
" lastspace (https://github.com/farmergreg/vim-lastplace)
"Plug 'farmergreg/vim-lastplace'
"let g:lastplace_open_folds = 0
" start vim with recent files
Plug 'mhinz/vim-startify'
" undotree
Plug 'simnalamburt/vim-mundo'
" vim surround: https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'
" Plugins for commentary
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'
" enhanced visual selection (https://github.com/mg979/vim-visual-multi/wiki/Quick-start)
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" display thin vertical lines for each indent level
Plug 'Yggdroot/indentLine'
" dash API (https://github.com/rizzatti/dash.vim)
Plug 'rizzatti/dash.vim'
" repl plugin, use vim-slime
" Plug 'sillybun/vim-repl' "doesn't support neovim
Plug 'jpalardy/vim-slime'

" pandoc and rmarkdown 
"Plug 'vim-pandoc/vim-rmarkdown'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax' 

" markdown prevew
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
let g:mkdp_command_for_global = 1

" sublime-text like minimap
Plug 'wfxr/minimap.vim'

" other language support for markdown 
Plug 'tpope/vim-markdown'

" easy motion:https://github.com/easymotion/vim-easymotion
Plug 'easymotion/vim-easymotion'

" -- to be continued --
"Plug 'kassio/neoterm'
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'sbdchd/neoformat'

" R language support
Plug 'jalvesaq/Nvim-R'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'roxma/nvim-yarp'
Plug 'gaalcaras/ncm-R'

" todo: learn how to use snippets
" vim snippets
" Plug 'sirver/UltiSnips'
" Plug 'ncm2/ncm2-ultisnips'
"Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'honza/vim-snippets'
Plug 'zxqfl/tabnine-vim'
Plug 'tpope/vim-sensible'
"Plug 'vim-scripts/taglist.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

" -------------------- vim-plug settings --------------------

" lightline
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }

" rainbow brackets
let g:rainbow_active=1

" Molokai theme
colorscheme molokai
let g:rehash256 = 1

" accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_table = [2, 4, 7, 15]

" show git changes
let g:gitgutter_map_keys = 0

" vim easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" show current word in normal mode
"let g:vim_current_word#enabled = 1
let g:vim_current_word#highlight_current_word = 0

" undotree
nnoremap <leader>u :MundoToggle<CR>

 "toggle nerd tree
nnoremap <silent> <leader><C-n> :NERDTreeToggle<CR>

" repl
" nnoremap <leader>r :REPLToggle
" nnoremap <leader>l: TREPLSendLine
let g:slime_target = "tmux"
let g:slime_past_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}


" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'sql': { 'left': '--','right': '' } }

" -- to be continued --

let g:omni_sql_no_default_maps = 1

" sql formatter: sqlparse
"let g:neoformat_python_sqlparse = {
"            \ 'exe': 'sqlparse',
"            \ 'args': ['comma_first=True'],
"            \ }
"
"let g:neoformat_enabled_sql = ['sqlparse']

nnoremap <leader>r :REPLToggle
nnoremap <leader>l: TREPLSendLine

"" languageserver for R
"let g:LanguageClient_serverCommands = {
"    \ 'r': ['R', '--slave', '-e', 'languageserver::run()'],
"    \ }

" configuration for vim-pandoc and vim-rmarkdown
let g:pandoc#modules#disabled = ["folding", "spell"]
let g:pandoc#syntax#conceal#use = 0

" enable fenced code bolock syntax highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'sql', 'r']
let g:markdown_syntax_conceal = 0

