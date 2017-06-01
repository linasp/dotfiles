" Plugin management
" -----------------

" Vundle setup.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle bundles.
Bundle 'tpope/vim-surround'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ciaranm/inkpot'
Plugin 'dsolstad/vim-wombat256i'
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'pikma/space-macro'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-pathogen'
Plugin 'w0ng/vim-hybrid'

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
" nmap <leader>r :tabedit $MYVIMRC<CR>

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

" Colors
" ------
syntax on
set background=dark
set t_Co=256
colorscheme gruvbox

" Quickfix
" --------

" Fix position.
:autocmd FileType qf wincmd J

" Few shortcuts for working with LaTeX files.
" -------------------------------------------
nnoremap <leader>c :!pdflatex -output-directory=%:p:h %<CR>
nnoremap <leader>v :!open %:r.pdf<CR>
