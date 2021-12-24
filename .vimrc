syntax on

set encoding=utf8
set nocompatible
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set ofu=syntaxcomplete#Complete
set autochdir
set guioptions-=m "remove menu bar in gVim
set guioptions-=T "remove toolbar in gVim
set guioptions+=Lrb "fix for the stupid scrollbar bug
set guioptions-=Lrb
set background=dark
set fillchars=""
set relativenumber

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"Color schemes
Plug 'kristijanhusak/vim-hybrid-material'

"Utility
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'

"Navigation && UI
Plug 'wincent/Command-T'
Plug 'nelstrom/vim-markdown-folding'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'

"Syntax & autocompletion
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'

Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'


"Language spesific plugins
Plug 'tpope/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'jgdavey/tslime.vim'

""Haskell
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'

""Python
Plug 'nvie/vim-flake8'

call plug#end()


"
"Colorschemes & themes & stuff
"
colorscheme hybrid_reverse
let g:airline_theme='hybrid'
exe 'hi NonText guifg=bg'
exe 'hi NonText ctermfg=bg'

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Hack:h10,Inconsolata\ 8
    elseif has("gui_macvim")
        set guifont=FiraCode-Regular:h10,Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Hack:h10:cANSI,Consolas:h10:cANSI
    endif
else
    "colorscheme zenburn
endif

let g:solarized_termcolors=256
let g:solarized_termtrans=1

let mapleader=" "
let NERDTreeQuitOnOpen=1


"
" Deoplete
"
let g:deoplete#enable_at_startup = 1

"
"Syntastic config
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['jshint']


map <silent> <c-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w


if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
