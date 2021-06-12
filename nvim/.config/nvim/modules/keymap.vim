
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
"inoremap <C-a> <Home>
inoremap <C-a> <Esc><S-i>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" insert 模式下用crtl h 和 crtl l代表 backspace 和 del
inoremap <C-h> <BS>
inoremap <C-l> <Del>

" insert 模式下用ctrl k 删除从光标到最后并写入黑洞寄存器
inoremap <C-k> <C-o>"_D

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

vnoremap <leader>tb : !pandoc<CR>
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

" Basic cursor movement and deletion keybindings from emacs, for vim.

" insert mode
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
"imap <C-d> <Del>
imap <C-h> <BS>
imap <C-k> <C-r>=<SID>kill_line()<CR>

" command line mode
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-k> <C-f>D<C-c><C-c>:<Up>

" command-T window
let g:CommandTCursorLeftMap  = ['<Left>',  '<C-b>']
let g:CommandTCursorRightMap = ['<Right>', '<C-f>']
let g:CommandTBackspaceMap   = ['<BS>',    '<C-h>']
let g:CommandTDeleteMap      = ['<Del>',   '<C-d>']

function! s:home()
  let start_col = col('.')
  normal! ^
  if col('.') == start_col
    normal! 0
  endif
  return ''
endfunction

function! s:kill_line()
  let [text_before_cursor, text_after_cursor] = s:split_line_text_at_cursor()
  if len(text_after_cursor) == 0
    normal! J
  else
    call setline(line('.'), text_before_cursor)
  endif
  return ''
endfunction

function! s:split_line_text_at_cursor()
  let line_text = getline(line('.'))
  let text_after_cursor  = line_text[col('.')-1 :]
  let text_before_cursor = (col('.') > 1) ? line_text[: col('.')-2] : ''
  return [text_before_cursor, text_after_cursor]
endfunction
