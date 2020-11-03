"function! HumanSize(bytes) abort
"    let l:bytes = a:bytes
"    let l:sizes = ['B', 'KiB', 'MiB', 'GiB']
"    let l:i = 0
"    while l:bytes >= 1024
"        let l:bytes = l:bytes / 1024.0
"        let l:i += 1
"    endwhile
"    return printf('%.1f%s', l:bytes, l:sizes[l:i])
"endfun

function! GetCurFilePath()
    let cur_dir=getcwd()
    let cur_file_name=getreg('%')
    let dir_filename=cur_dir."/".cur_file_name
    echo dir_filename
    call setreg('+',dir_filename)
endfunction

nnoremap <leader>fp : call GetCurFilePath()<cr>
