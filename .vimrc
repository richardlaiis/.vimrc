" test
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'suan/vim-instant-markdown'
" Plugin 'honza/vim-snippets'
" Plugin 'arcticicestudio/nord-vim'
Plugin 'ghifarit53/tokyonight-vim'
" Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required

:set nu
:set rnu
:set cursorline
:set tabstop=4
:set shiftwidth=4
:set incsearch
:set termguicolors
:syntax on

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

" :colorscheme night
":hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
":hi CursorLineNr cterm=bold ctermfg=DarkCyan ctermbg=NONE

:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko
:inoremap {{ {}<Esc>i
:inoremap jk <Esc>
:inoremap <F5> <Esc><F5>
" run python script
:inoremap <silent> <C-r> <Esc>:w<CR>:!python3 %<CR>

:nnoremap <C-b> :NERDTreeFocus<CR>
:nnoremap <C-n> :NERDTree<CR>
:nnoremap <C-t> :NERDTreeToggle<CR>
:nnoremap <C-f> :NERDTreeFind<CR>
:nnoremap <F5> :w<CR>:!clear;gcc -fsanitize=address,undefined -g %:r.c -DDEBUG -O2 -o %:r && echo "Compiled" && ./%:r<CR>
" Map Ctrl+A to select all and copy to system clipboard
:nnoremap <C-a> ggVG"+y
