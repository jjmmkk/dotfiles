" Use Vim settings instead of Vi settings
set nocompatible

" Show position of cursor
set ruler

" Syntax highlighting if the terminal has colors
if &t_Co > 2 || has("gui_running")
    syntax on
endif

" Columns
"set columns=80

" Do not wrap lines
set nowrap

" Indenting: 4 spaces, no tabs
set autoindent
" Uncomment line below when working with makefiles
set expandtab
set shiftwidth=4
set tabstop=4

" Command history
set history=50
