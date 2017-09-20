" i liek my coffee scripted

scriptencoding utf-8
set encoding=utf-8

" path where configs are stored
let s:NEOVIM_CONFIG = '$HOME/lemonade/conf/vim/'

" configs split up according to functionality
let s:configs = [
\ 'mappings',
\ 'mappings.plugins',
\ 'plugins',
\ 'settings',
\ 'settings.plugins',
\ ]

" load all configs
for s:config in s:configs
  let s:configPath = s:NEOVIM_CONFIG . s:config . '.vim'
  execute 'source ' . fnameescape(s:configPath)
endfor
