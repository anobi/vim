syntax on

filetype plugin on
filetype plugin indent on

set nocompatible
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set encoding=utf8
set ofu=syntaxcomplete#Complete
set autochdir
set guioptions-=m "remove menu bar in gVim
set guioptions-=T "remove toolbar in gVim
set guioptions+=Lrb "fix for the stupid scrollbar bug
set guioptions-=Lrb
set background=dark

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

"Utility
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

"Navigation && UI
Plugin 'wincent/Command-T'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'Lokaltog/powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

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
    colorscheme zenburn
endif

let g:solarized_termcolors=256
let g:solarized_termtrans=1

let mapleader=" "
let NERDTreeQuitOnOpen=1

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

map <silent> <c-n> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>

map <F11> V"by:call Send_to_Tmux(@b)<CR>
map <CR> V"by:call Send_to_Tmux(@b)<CR>
vmap <CR> "by:call Send_to_Tmux(@b)<CR>
map <F3> :call Tmux_Vars()<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
