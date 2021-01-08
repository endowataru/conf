
if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
    call dein#end()
    call dein#save_state()
endif

filetype plugin on
filetype indent off
filetype plugin indent off
syntax enable

set undofile

set autoread

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

nnoremap <silent> <S-Down>  :resize -2<CR>
nnoremap <silent> <S-Up>    :resize +2<CR>
nnoremap <silent> <S-Left>  :vertical resize -3<CR>
nnoremap <silent> <S-Right> :vertical resize +3<CR>

nnoremap <silent> <Space>t :bel 10sp +terminal<CR>:startinsert<CR>

tnoremap <Esc> <C-\><C-n>

" Reference: https://vim.fandom.com/wiki/Search_and_replace_the_word_under_the_cursor
nnoremap <Space>s :%s/\<<C-r><C-w>\>//g<Left><Left>

"colorscheme desert
colorscheme gruvbox

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

nnoremap <Space>2 :setlocal tabstop=2<CR>:setlocal shiftwidth=2<CR>:setlocal expandtab<CR>
nnoremap <Space>4 :setlocal tabstop=4<CR>:setlocal shiftwidth=4<CR>:setlocal expandtab<CR>

autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType javascriptreact setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 expandtab

