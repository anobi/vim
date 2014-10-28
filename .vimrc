set nocompatible
filetype plugin on
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'wincent/Command-T'
Bundle 'nelstrom/vim-markdown-folding'
Bundle 'Lokaltog/powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ciaranm/inkpot'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'tpope/vim-surround'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'shougo/neocomplcache'
Bundle 'mattn/emmet-vim'
Bundle 'jgdavey/tslime.vim'

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

set background=dark

if has("gui_running")
    colorscheme inkpot
    if has("gui_gtk2")
        set guifont=Inconsolata\ 8
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Consolas:h10:cANSI
    endif
else
    colorscheme solarized
endif

let g:solarized_termcolors=256
let g:solarized_termtrans=1

set background=dark
colorscheme solarized

let mapleader=" "
let NERDTreeQuitOnOpen=1

map <silent> <c-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

map <F11> V"by:call Send_to_Tmux(@b)<CR>
map <CR> V"by:call Send_to_Tmux(@b)<CR>
vmap <CR> "by:call Send_to_Tmux(@b)<CR>
map <F3> :call Tmux_Vars()<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
