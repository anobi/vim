call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set nocompatible

filetype plugin on
filetype plugin indent on

set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set ofu=syntaxcomplete#Complete
set autochdir

syntax on

set guioptions-=m "remove menu bar in gVim
set guioptions-=T "remove toolbar in gVim
set guioptions+=Lrb "fix for the stupid scrollbar bug
set guioptions-=Lrb

set laststatus=2
set encoding=utf8
set guifont=consolas:h10

set t_Co=256
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let mapleader=" "
let NERDTreeQuitOnOpen=1
colorscheme inkpot

map <silent> <c-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
