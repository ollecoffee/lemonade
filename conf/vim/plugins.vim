" auto install plug if not found
if empty(glob('$HOME/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo "$HOME/.config/nvim/autoload/plug.vim" --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  augroup PLUG
    autocmd!
    autocmd VimEnter * PlugInstall
  augroup END
endif


call plug#begin()

" filez
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" autocomplete
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim',                   { 'do': ':UpdateRemotePlugins' }

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" general
Plug 'junegunn/vim-slash'
Plug 'itchyny/lightline.vim'

" js
Plug 'pangloss/vim-javascript',                { 'for': 'javascript.jsx' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript.jsx' }

" html
Plug 'othree/html5.vim',                       { 'for': 'html' }

" css
Plug 'hail2u/vim-css3-syntax',                 { 'for': 'css' }

" json
Plug 'elzr/vim-json',                          { 'for': 'json' }

" xml
Plug 'othree/xml.vim',                         { 'for': 'xml' }

" java
Plug 'artur-shaik/vim-javacomplete2',          { 'for': 'java' }

" php
Plug 'ludovicchabant/vim-gutentags',           { 'for': 'php' }
Plug 'lvht/phpcd.vim',                         { 'for': 'php', 'do': 'composer install' }
Plug 'arnaud-lb/vim-php-namespace',            { 'for': 'php' }

call plug#end()


