"================================================================
"" Vim sets
"================================================================
set t_Co=256                            " set 256 colors
set rnu                                 " show line numbers
set tabstop=4 softtabstop=4             " 4 whitespaces for tabs visual presentation
set shiftwidth=4                        " shift lines by 4 tabs
set expandtab                           " expand tabs into spaces
set smartindent                         " indent when moving to the next line
set cursorline                          " shows line under the cursor's line
set showmatch                           " shows matching part of bracket pairs
set enc=utf-8                           " set default encoding
set exrc                                " enable usage of additional .vimrc files from working directory
set secure
set guicursor=                          " use always block cursor
set hid                                 " hide buffers instead of closing them
set nohlsearch
set noeb                                " dont ring the bell, no any flash light
set nowrap                              " dont wrap lines when line longer than display
set scs                                 " smart case search
set noswapfile                          " no swap files
set nobk                                " no backup files
set undofile                            " store changes permanent
set undodir=$HOME/.vim/undodir          " undo directory
set incsearch                           " show matches for search patters in rt
set backspace=indent,eol,start          " remove all with backspace
set scrolloff=8                         " enable scroll before/after 8 lines
set nosmd                               " If in Insert, Replace or Visual mode put a message on the last line
set cot=menuone,noinsert,noselect       " insert mode options
set cc=80                               " add viaual line width line
set scl=yes                             " add extra column for linter etc
set ttyfast


