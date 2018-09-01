" plugins {{{
" Auto install vim-plug if not installed ready. Website https://github.com/junegunn/vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.local/share/nvim/plugged') "location of installed pluggins


call plug#end()
" }}}

" neovim settings {{{
let mapleader=","    " leader is comma
set modelines=1      " modeline will check last line for vim spiecial comments
set tabstop=4        " numer of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing
set expandtab        " when tab key is pressed it is turned to spaces

set number           " show line numbers
set showcmd          " show command in bottom bar
set cursorline       " highlight current line
set wildmenu         " visual autocomplet for command menu
set showmatch        " highlight matching brackets

set incsearch        " search as characters are entered
set hlsearch         " highlight matches

" turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" save session - reopen with nvim -s to open saved session
nnoremap <leader>s :mksession<CR>

" }}}

" vim:foldmethod=marker