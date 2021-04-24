
" leader 键
let mapleader=","

" some tricks from https://github.com/wsdjeg/vim-galore-zh_cn
" searhing behaviour: n always forward, N always backward
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" 命令模式下方向键
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" 快速移动当前行
nnoremap [e  :<C-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<C-u>execute 'move +'. v:count1<cr>

" 防止水平滑动时失去选择
"xnoremap < :<gv
"xnoremap > :>gv

" insert 模式下用ctrl a 和 ctrl e
inoremap <C-e> <End>
inoremap <C-a> <Home>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" clear search highlight by pressing C-l
nnoremap <silent><C-l> :nohlsearch<CR>
"nnoremap <silent><C-l> :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" edit vimrc shortcut
nnoremap <leader>ev :vsp $MYVIMRC<CR>
" source vimrc shortcut
nnoremap <leader>sv :source $MYVIMRC<CR>:nohlsearch<CR>
" delete trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" remap x to tabclose
nnoremap <leader>x :tabclose<CR>


"let g:omni_sql_no_default_maps = 1

nnoremap <leader>cp : <esc>ggVGy<C-o>

" ----- buffer option -----
" quick swithch between buffers
"nnoremap <leader><S-p> :bprevious<CR>
"nnoremap <leader><S-n> :bnext<CR>

" delete buffer
"nnoremap <leader>bd :bufferdelete<CR>

" insert R pipe line
"inoremap <C-l> %>% 
"inoremap <C-i> %in% 
"inoremap <C-k> <- 
