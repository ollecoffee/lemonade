scriptencoding utf-8
set encoding=utf-8

" leader - space masterrace
let g:mapleader = "\<Space>"

" yank the whole line with Y
nnoremap Y 0y$

" don't use arrows!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" NERDTree nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
