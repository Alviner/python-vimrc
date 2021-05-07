set completeopt-=preview

let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='$HOME/.vim/ycm_extra_conf.py'

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToType<CR>
