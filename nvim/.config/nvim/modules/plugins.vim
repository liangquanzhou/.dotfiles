call plug#begin(stdpath('data') . '/plugged')

" Monokai theme
"Plug 'tomasr/molokai'
"Plug 'UtkarshVerma/molokai.nvim', { 'branch': 'main' }

" status bar
Plug 'itchyny/lightline.vim'
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

" show gitbrach in status bar
Plug 'itchyny/vim-gitbranch'

" show icons
Plug 'ryanoasis/vim-devicons'

" rainbow brankets
"Plug 'luochen1990/rainbow'
"let g:rainbow_active=1
Plug 'junegunn/rainbow_parentheses.vim'
let g:rainbow#max_level = 16
autocmd VimEnter * RainbowParentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['<', '>'], ['{', '}']]

" accelerated j k
Plug 'rhysd/accelerated-jk'
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
let g:accelerated_jk_acceleration_table = [2, 4, 7, 15]

" show git changes
Plug 'airblade/vim-gitgutter'
let g:gitgutter_map_keys = 0

" easy-align (https://github.com/junegunn/vim-easy-align)
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" show current word
"Plug 'RRethy/vim-illuminate'
"let g:Illuminate_insert_mode_highlight = 1
Plug 'itchyny/vim-cursorword'
"Plug 'dominikduda/vim_current_word'
"let g:vim_current_word#enabled = 1
"let g:vim_current_word#highlight_current_word = 0

"Plug 'inkarkat/vim-SearchHighlighting'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" semantic highlighting
Plug 'jaxbot/semantic-highlight.vim'
" lastspace (https://github.com/farmergreg/vim-lastplace)
"Plug 'farmergreg/vim-lastplace'
"let g:lastplace_open_folds = 0
" start vim with recent files
Plug 'mhinz/vim-startify'

" undotree
Plug 'simnalamburt/vim-mundo'
nnoremap <leader>u :MundoToggle<CR>

" vim surround: https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" Plugins for commentary
Plug 'tpope/vim-commentary'

Plug 'preservim/nerdcommenter'
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'sql': { 'left': '-- ','right': '' } }

" enhanced visual selection (https://github.com/mg979/vim-visual-multi/wiki/Quick-start)
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" display thin vertical lines for each indent level
Plug 'Yggdroot/indentLine'
"let g:indentLine_setConceal = 0
let g:indentLine_enabled = 1
Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

" dash API (https://github.com/rizzatti/dash.vim)
"Plug 'rizzatti/dash.vim'

" repl plugin, use vim-slime
" Plug 'sillybun/vim-repl' "doesn't support neovim
"nnoremap <leader>r :REPLToggle
"nnoremap <leader>l: TREPLSendLine

Plug 'jpalardy/vim-slime'
" nnoremap <leader>r :REPLToggle
" nnoremap <leader>l: TREPLSendLine
let g:slime_target = "tmux"
"let g:slime_past_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_python_ipython = 1

" pandoc and rmarkdown 
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
" configuration for vim-pandoc and vim-rmarkdown
let g:pandoc#modules#disabled = ["folding", "spell"]
let g:pandoc#syntax#conceal#use = 0

" markdown mathjax support (https://github.com/iamcco/mathjax-support-for-mkdp)
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" markdown prevew (https://github.com/iamcco/markdown-preview.nvim)
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"let g:mkdp_command_for_global = 1

" sublime-text like minimap
"Plug 'wfxr/minimap.vim'
"let g:minimap_width = 10
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1
"hi MinimapCurrentLine ctermfg=Green guifg=#50FA7B guibg=#32302f
"let g:minimap_highlight = 'MinimapCurrentLine'

" other language support for markdown 
"Plug 'tpope/vim-markdown'
"必要插件，安装在vim-markdown前面
Plug 'godlygeek/tabular' 
Plug 'plasticboy/vim-markdown'
" enable fenced code bolock syntax highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'sql', 'r']
let g:markdown_syntax_conceal = 0
"let g:vim_markdown_math = 1
" disable header folding
let g:vim_markdown_folding_disabled = 0

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
"let g:vim_markdown_toml_frontmatter = 1  " for TOML format
"let g:vim_markdown_json_frontmatter = 1  " for JSON format

Plug 'chrisbra/csv.vim'
Plug 'chrisbra/Colorizer'
let g:colorizer_auto_color = 1
let g:colorizer_colornames = 0

" easy motion:https://github.com/easymotion/vim-easymotion
Plug 'easymotion/vim-easymotion'
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" -- to be continued --
"Plug 'kassio/neoterm'
Plug 'sbdchd/neoformat'
" sql formatter: sqlparse
"let g:neoformat_python_sqlparse = {
"            \ 'exe': 'sqlparse',
"            \ 'args': ['comma_first=True'],
"            \ }
"
"let g:neoformat_enabled_sql = ['sqlparse']

" R language support
Plug 'jalvesaq/Nvim-R'
let R_assign_map = 0
"Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'roxma/nvim-yarp'
"Plug 'gaalcaras/ncm-R'

" todo: learn how to use snippets
" vim snippets
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
" snip settings
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Plug 'ncm2/ncm2-ultisnips'

"Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'codota/tabnine-vim'
Plug 'tpope/vim-sensible'

"Plug 'vim-scripts/taglist.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
autocmd FileType markdown,rmd let b:coc_pairs = [["$", "$"]]
"autocmd FileType markdown let b:coc_pairs_disabled = ['`']
autocmd FileType r,rmd let b:coc_pairs_disabled = ['<']
autocmd CursorHold * silent call CocActionAsync('highlight')

Plug 'scrooloose/nerdtree'
nnoremap <silent> <leader><C-n> :NERDTreeToggle<CR>

" Language server protocal
"Plug 'neovim/nvim-lspconfig'
"Plug 'kabouzeid/nvim-lspinstall'
"" languageserver for R
"let g:LanguageClient_serverCommands = {
"    \ 'r': ['R', '--slave', '-e', 'languageserver::run()'],
"    \ }

" treesitter
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'folke/lsp-colors.nvim'
Plug 'vim-scripts/dbext.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'p00f/nvim-ts-rainbow'
"Plug 'unblevable/quick-scope'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'msva/luakai'
Plug 'SidOfc/mkdx'
Plug 'shmup/vim-sql-syntax'
Plug 'iamcco/markdown-preview.nvim'

" Initialize plugin system
call plug#end()

colorscheme luakai
"let g:rehash256 = 1

" -- to be continued --

"let g:omni_sql_no_default_maps = 1

