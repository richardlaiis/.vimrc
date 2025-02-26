filetype indent on
filetype plugin on
set nocompatible
set number
set relativenumber
set cursorline
set tabstop=4
set shiftwidth=4
set incsearch
set termguicolors
syntax on
syntax enable

hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=DarkCyan ctermbg=NONE

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
inoremap {{ {}<Esc>i

inoremap jk <Esc>
inoremap <F5> <Esc><F5>

function! ExecuteFile()
    let extension = expand('%:e')
    w
    if extension == 'py'
        execute '!python3 %'
    elseif extension == 'c'
        execute '!gcc -g %:r.c -o %:r && ./%:r'
    endif
endfunction

nnoremap <F5> :call ExecuteFile()<CR>

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'ghifarit53/tokyonight-vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/instant-markdown/vim-instant-markdown'
Plug 'https://github.com/tpope/vim-commentary'

call plug#end()

" lightline
set background=dark
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }


set noshowmode
" nerdtree key binding
nnoremap <C-b> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:instant_markdown_mathjax = 1
let g:instant_markdown_theme = 'dark'
