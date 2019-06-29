
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Show line numbers on the left.
set number


set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

colorscheme desert

