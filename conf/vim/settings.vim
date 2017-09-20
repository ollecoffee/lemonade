set encoding=utf-8
scriptencoding utf-8

" General settings
set number	      " enable line number
set relativenumber    "set relative line numbering
set cursorline        "highlight current line
set ruler             " always show cursor
set clipboard=unnamed "copy
set autoread          "autoread when a file is changed from the outside
set copyindent
set mouse-=a
set visualbell
set showcmd
set backupcopy=yes

" Syntax highlight
if !exists('g:syntax_on')
    " https://stackoverflow.com/questions/33380451/is-there-a-difference-between-syntax-on-and-syntax-enable-in-vimscript
    syntax enable       "enable syntax highlighting
endif

" Indent 
set expandtab      " tab is now space
set tabstop=2      " 2 space characters
set shiftwidth=2   " set to ^
set softtabstop=2  " same same but also a lil different

" Google
set ignorecase
set smartcase
set showmatch
