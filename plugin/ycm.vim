"================================================================
"" YouCompleteMe Settings
"================================================================
set completeopt-=preview

let g:ycm_global_ycm_extra_conf='$HOME/.vim/plugin/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_show_diagnostics_ui=0
let g:ycm_key_list_select_completion=['<C-n', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
nmap <leader>g :YcmCompleter GoTo<CR>
