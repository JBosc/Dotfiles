" Utility functions
"
" This contains various utility functions that may be used throughout my
" vim configuration.

" Test if there is only an empty buffer in the buffer list
function NoBuffersOpen()
    let l:bufs = filter(range(1, bufnr('$')), 'buflisted(v:val)')
    return len(bufs) == 1 && empty(bufname(bufs[0]))
endfunction

function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction

" strips trailing whitespace at the end of files. This is called on buffer
" write.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s =@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
