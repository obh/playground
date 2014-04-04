" ok pathogen is set
" execute pathogen#infect()

syntax on
"set clipboard=unnamed
set number
set tabstop=4 shiftwidth=4 expandtab

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on 




" custom obh additions 

noremap % v%
xmap vv <Esc>:%!python -m json.tool

" stupid hack because backspace doesn't seem to work in vim-insert mode
set backspace=indent,eol,start

" setting solarized theme
syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

" custom window movements
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" custom <shift> + : => ;
noremap ; :

" custom non-sudo save
let mapleader=","
noremap <Leader>w :w !sudo tee % > /dev/null
