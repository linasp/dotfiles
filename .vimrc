" Plugin management
" -----------------

" Vundle setup.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle bundles.
Plugin 'altercation/vim-colors-solarized'
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-pathogen'

call vundle#end()
filetype plugin indent on

" Basics
" ------

" Show line numbers.
set number

" Disable beeps.
set visualbell

" Change leader key to , (comma).
let mapleader = ","

" Vimrc
" -----

" Easy shortcut for editing vimrc.
nmap <leader>v :tabedit $MYVIMRC<CR>

" Source the vimrc file after saving it
if has("autocmd") && !exists("autocmd_vimrc")
  let autocmd_vimrc = 1
  autocmd bufwritepost ~/.vimrc source $MYVIMRC
endif

" Indentation
" -----------
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" Show 80 char limit.
set textwidth=80
set colorcolumn=+1

" Search
" ------
set ignorecase
set smartcase
set incsearch
set hlsearch

" Ctrl-n to turn off current search.
map <C-n> :nohlsearch<CR>

" Space to search word under cursor (without move).
map <space> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Colors
" ------
syntax on
colorscheme jellybeans

" Quickfix
" --------

" Fix position.
:autocmd FileType qf wincmd J
