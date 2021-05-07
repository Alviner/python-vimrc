"===============================================================
"" Some utilites
"===============================================================

" remove tailing whitespace
fun TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_WRITEGROUP
    autocmd!
    " funtastic vim will be register callback on every sourse
    " that's why group should be cleared every time or callback will be called N
    " times called source
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

" disable  arrows in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


