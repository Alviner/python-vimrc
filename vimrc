"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

let $vimhome=fnamemodify(resolve(expand("~/.vimrc")), ':p:h')

" Be iMproved
set nocompatible

"=====================================================
"" Vundle settings
"=====================================================
filetype off

call plug#begin('~/.vim/plugged')
    "-------------------=== Code/Project navigation ===-------------
    Plug 'scrooloose/nerdtree'                " Project and file navigation
    Plug 'Xuyuanp/nerdtree-git-plugin'        " NerdTree git functionality
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'                   " Fuzzy search
    Plug 'majutsushi/tagbar'                  " Class/module browser
    Plug 'thaerkh/vim-indentguides'           " Visual representation of indents

    "-------------------=== Other ===-------------------------------
    Plug 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plug 'vim-airline/vim-airline-themes'     " Themes for airline
    Plug 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plug 'fisadev/FixedTaskList.vim'          " Pending tasks list
    Plug 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plug 'flazz/vim-colorschemes'             " Colorschemes
    Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling
    Plug 'ryanoasis/vim-devicons'             " Dev Icons
    Plug 'mhinz/vim-startify'                 " Vim Start Page
    Plug 'mhinz/vim-signify'                  " show git diffs
    Plug 'tpope/vim-obsession'                " Session manager
    Plug "Raimondi/delimitMate"               " automatic closing of quotes, parenthesis, brackets and more

    "------------------------=== Extra ===-------------------------
    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-indent'

    "-------------------=== Languages support ===-------------------
    Plug 'tpope/vim-commentary'               " Comment stuff out
    Plug 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    Plug 'Rykka/riv.vim'                      " ReStructuredText plugin
    Plug 'Valloric/YouCompleteMe'             " Autocomplete plugin
    Plug 'fatih/vim-go', { 'tag': '*' }

    "-------------------=== Python  ===-----------------------------
    Plug 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
    Plug 'scrooloose/syntastic'               " Syntax checking plugin for Vim

call plug#end()

filetype on
filetype plugin on
filetype plugin indent on
"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors

colorscheme obsidian                        " set color scheme
set background=dark

set relativenumber                          " show line numbers
set ruler
set ttyfast                                 " terminal acceleration
set hidden                                  " hide buffers instead of closing them
set autochdir                               " automatically change the current directory

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...


"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

"" Search settings
"=====================================================
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-E> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
nnoremap <silent> <Leader>t :TagbarToggle<CR>

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
nmap <leader>z :NERDTreeToggle<CR>
nmap <leader>a :NERDTreeFocus<CR>

"=====================================================
"" Python settings
"=====================================================

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_bind='<C-B>'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=80
augroup END

" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='%'

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_python_checkers=['Pylama', 'python', 'mypy']

" YouCompleteMe
set completeopt-=preview

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToType<CR>

" disable  arrows in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


function! s:build_quickfix_list(lines)
    call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
    copen
    cc
endfunction

let g:fzf_action = {'ctrl-q': function('s:build_quickfix_list'), 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
