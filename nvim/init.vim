
if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/defx.nvim')
    call dein#add('itchyny/lightline.vim')
    
    call dein#add('w0rp/ale')
    
    call dein#add('morhetz/gruvbox')
    
    call dein#end()
    call dein#save_state()
endif

filetype plugin on
filetype indent off
syntax enable

set undofile

" Show line numbers on the left.
set number

set ignorecase
set smartcase

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set autoread
set hidden

set noequalalways

set clipboard&
set clipboard^=unnamedplus

set mouse=a

set spell
set spelllang=en,cjk

set nofoldenable

set tabstop=4
set shiftwidth=4
set expandtab

vnoremap <silent> > >gv
vnoremap <silent> < <gv

noremap  <silent> <C-S>      :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

nnoremap <silent> <Space>e :Defx -new<CR>
nnoremap <silent> <Space>x
    \ :Defx -split=vertical -winwidth=28 -direction=topleft<CR>

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
    \ defx#is_directory() ?
    \ defx#do_action('open') :
    \ defx#do_action('open')
    nnoremap <silent><buffer><expr> l
    \ defx#is_directory() ?
    \ defx#do_action('open_tree') :
    \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> t
    \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> T
    \ defx#do_action('open_tree_recursive')
    nnoremap <silent><buffer><expr> K
    \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
    \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> S
    \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
    \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
    \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
    \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
    \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
    \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
    \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> h
    \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
    \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
    \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
    \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
    \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
    \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
    \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>
    \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
    \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
    \ defx#do_action('change_vim_cwd')
endfunction

let g:ale_linters = {
    \'c'   : ['clangd'],
    \'cpp' : ['clangd']
\}

"colorscheme desert
colorscheme gruvbox

