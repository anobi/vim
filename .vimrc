call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set nocompatible

filetype plugin on
set ofu=syntaxcomplete#Complete
set autochdir
syntax on
set guioptions-=m "remove menu bar in gVim
set guioptions-=T "remove toolbar in gVim
set guioptions+=Lrb "fix for the stupid scrollbar bug
set guioptions-=Lrb
set laststatus=2
set encoding=utf8

set t_Co=256
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let mapleader=" "
let NERDTreeQuitOnOpen=1
colorscheme solarized

map <silent> <c-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
