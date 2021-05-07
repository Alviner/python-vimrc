set nocompatible
filetype off

call plug#begin('$HOME/.vim/plugged')
    "-----------------------=== Core ===--------------------------
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'                        " highly extendable fuzzy finder over lists
    Plug 'nvim-telescope/telescope.nvim'                " fuzzy finder over lists
    Plug 'bling/vim-airline'                            " lean & mean status/tabline for vim
    Plug 'scrooloose/nerdtree'                          " navigation
    Plug 'yuttie/comfortable-motion.vim'                " smooth scrolling

    "-------------------=== Visualization ===---------------------
    Plug 'joshdick/onedark.vim'                         " colorscheme
    Plug 'ryanoasis/vim-devicons'                       " dev icons
    Plug 'mhinz/vim-startify'                           " vim start Page
    Plug 'mhinz/vim-signify'                            " show git diffs
    Plug 'Lokaltog/powerline'                           " powerline fonts plugin
    Plug 'tpope/vim-commentary'                         " comment stuff out

    "----------------=== Code speed increase ===------------------
    Plug 'Valloric/YouCompleteMe'                       " autocomplete plugin
    Plug 'scrooloose/syntastic'                         " syntax checking plugin for Vim
    Plug 'tpope/vim-surround'                           " parentheses, brackets, quotes, XML tags, and more
    Plug 'majutsushi/tagbar'                            " class/module browser
    Plug 'tpope/vim-obsession'                          " session manager
    Plug 'Raimondi/delimitMate'                         " automatic closing of quotes, parenthesis, brackets and more

call plug#end()

syntax enable                           " syntax highlight
for plugin in split(glob('$HOME/.vim/plugin/*.vim'), '\n')
    exe 'source' plugin
endfor

