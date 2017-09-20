set encoding=utf-8
scriptencoding utf-8

" General settings
set number	      " enable line number
set relativenumber    " set relative line numbering
set cursorline        " highlight current line
set ruler             " always show cursor
set clipboard=unnamed " copy
set autoread          " autoread when a file is changed from the outside
set copyindent        " copy and keep indent
set mouse-=a          " disable thrash
set visualbell        " visual bell instead
set showcmd           " show last command
set backupcopy=yes    " backup a copy and overwrite the original

" Syntax highlight
if !exists('g:syntax_on')
    " https://stackoverflow.com/questions/33380451/is-there-a-difference-between-syntax-on-and-syntax-enable-in-vimscript
    syntax enable       " enable syntax highlighting
endif

" Indent 
set expandtab      " tab is now space
set tabstop=2      " 2 space characters
set shiftwidth=2   " set to ^
set softtabstop=2  " same same but also a lil different

" Google
set ignorecase     " ignore case
set smartcase      " find smarter
set showmatch      " show match insta

set laststatus=2   " display status always
set noshowmode     " hide ugly under the carpet
