set nocompatible
filetype plugin on
filetype plugin indent on

if has("win32") || has("gui_win32")
	set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
	call vundle#begin('$HOME/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'

Plugin 'wincent/Command-T'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'Lokaltog/powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ciaranm/inkpot'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'shougo/neocomplcache'
Plugin 'mattn/emmet-vim'
Plugin 'jgdavey/tslime.vim'

call vundle#end()

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
colorscheme inkpot

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
