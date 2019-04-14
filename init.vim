" --------------------=== Load Vim Plug if not installed ===--------------------                                                              
" Website https://github.com/junegunn/vim-plug/wiki/tips
" Run :PlugInstall in Neovim editor to load all the plugs for the first time
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.v
im
endif

" --------------------=== Specify a directory for plugins ===----------------
set rtp+=~/.local/share/nvim/plugged
call plug#begin('~/.local/share/nvim/plugged')              " Required by Vim Plug

" --------------------=== Code/Project Navigation ===--------------------
" Add all your plugins here
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }   " for file panel navigation
" Plug 'valloric/youcompleteme'                             " for syntax completion
Plug 'vim-syntastic/syntastic'                            " for syntax error highlighting
Plug 'majutsushi/tagbar'                                  " for overview panel press F8
Plug 'universal-ctags/ctags'                              " needed for above plugin
Plug 'rust-lang/rust.vim'                                 " for rust programming
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Complition 
Plug 'itchyny/lightline.vim'                              " for colourful status line
call plug#end()   

" --------------------=== Neovim settings ===--------------------

let mapleader=","    " leader is a comma
set encoding=UTF-8   " encoding utf8
set modelines=1      " modeline will check last line for vim special comments
set tabstop=4        " number of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing
set expandtab        " when tab key is pressed it is turned to spaces
set nocompatible     " not compatible with vi

" --------------------=== Neovim Visual settings ===--------------------

set number           " show line numbers
set ruler            " show ruler
set showcmd          " show command in bottom bar
set cursorline       " highlight current line
set wildmenu         " visual autocomplete for command menu
set showmatch        " highlight matching brackets
set incsearch        " search as characters are entered
set hlsearch         " highlight matches
set termguicolors    " use true colour in terminals
set laststatus=2     " Always display the status line
syntax on
set nowrap      " no wrap

" --------------------=== Settings for plugins loaded ===----------------------

" put your plugin settings here

" settings for lightline plugin theme
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" settings for syntastic plugin

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" settings rust plugin
let g:rustfmt_autosave = 1          " rustfmt on save

" --------------------=== Nerdtree keybindings ===--------------------

map <C-n> :NERDTreeToggle<CR>   " map control n keys to toggle nerdtree.
nmap <F8> :TagbarToggle<CR>     " map F8 to toggle Tagbar

