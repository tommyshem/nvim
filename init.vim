" plugins {{{
" Auto install vim-plug if not installed ready. Website https://github.com/junegunn/vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" Install plugins
call plug#begin('~/.local/share/nvim/plugged') "location of installed pluggins
" standard plugs
Plug 'valloric/youcompleteme'                             " for syntax completion
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }   " for file panel navigation
Plug 'vim-syntastic/syntastic'                            " for syntax error highlighting
Plug 'majutsushi/tagbar'                                  " for overview panel press F8
Plug 'rust-lang/rust.vim'                                 " for rust programming
call plug#end()
" }}}
" neovim settings {{{
let mapleader=","    " leader is comma
set encoding=utf8    " encoding to utf8
set modelines=1      " modeline will check last line for vim spiecial comments
set tabstop=4        " numer of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing
set expandtab        " when tab key is pressed it is turned to spaces
" }}}
" Visual settings {{{
set number           " show line numbers
set ruler            " show ruler
set showcmd          " show command in bottom bar
set cursorline       " highlight current line
set wildmenu         " visual autocomplet for command menu
set showmatch        " highlight matching brackets
" }}}
" Search settings {{{
set incsearch        " search as characters are entered
set hlsearch         " highlight matches
" turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Save session keybindings {{{
" save session - reopen with nvim -s to open saved session
nnoremap <leader>s :mksession<CR>
" }}}
" Nerdtree keybindings {{{
map <C-n> :NERDTreeToggle<CR>   " map control n keys to toggle nerdtree.	
" }}}
" Syntastic settings {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" Tagbar keybindings {{{
nmap <F8> :TagbarToggle<CR>
" }}}
" vim:foldmethod=marker