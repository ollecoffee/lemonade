" auto install plug if not found
if empty(glob('$HOME/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo "$HOME/.config//nvim/autoload/plug.vim" --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  augroup PLUG
    autocmd!
    autocmd VimEnter * PlugInstall
  augroup END
endif


call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" leader - space masterrace
let g:mapleader = "\<Space>"

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

" Open NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Open NERDTree when opening a directory or just starting Neovim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

