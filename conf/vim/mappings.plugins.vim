scriptencoding utf-8
set encoding=utf-8

" SuperTab
let g:SuperTabDefaultCompletionType = '<C-x><C-o>'
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>
