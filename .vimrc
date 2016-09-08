syntax on

filetype plugin on
filetype plugin indent on

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

if has("win32") || has("gui_win32")
    set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
    call vundle#begin('$HOME/vimfiles/bundle')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'

"Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/zenburn'
Plugin 'ciaranm/inkpot'
Plugin 'whatyouhide/vim-gotham'
Plugin 'kristijanhusak/vim-hybrid-material'

"Utility
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

"Navigation && UI
Plugin 'wincent/Command-T'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'

"Syntax & autocompletion
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'tpope/vim-surround'

"Language spesific plugins
Plugin 'tpope/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'jgdavey/tslime.vim'

""Haskell
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'

""Python
Plugin 'nvie/vim-flake8'

call vundle#end()


"
"Colorschemes & themes & stuff
"
colorscheme hybrid_reverse
let g:airline_theme='base16_google'
exe 'hi NonText guifg=bg'
exe 'hi NonText ctermfg=bg'

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Hack:h10,Inconsolata\ 8
    elseif has("gui_macvim")
        set guifont=Hack:h10,Menlo\ Regular:h14
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

"End of colors

"
"Neocomplete config
"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

"End of neocomplete

"Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['jshint']
"end of syntastic

map <silent> <c-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

map <F11> V"by:call Send_to_Tmux(@b)<CR>
map <CR> V"by:call Send_to_Tmux(@b)<CR>
vmap <CR> "by:call Send_to_Tmux(@b)<CR>
map <F3> :call Tmux_Vars()<CR>

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
