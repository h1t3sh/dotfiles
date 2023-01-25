" show matching brackets
set showmatch

"case insensitive matching
set ignorecase

" highlight search results
set hlsearch

" Display all search results
set incsearch

"number of columns occupied by tab character
set tabstop=4

"see multiple spaces as tabstop 
set softtabstop=4

"converts tab to whitespaces
set expandtab

"width for autoindents
set shiftwidth=4

"indent a new line the same amount as the line just typed
set autoindent

"add line numbers
set number

"set an 80 column border
"set cc=80

"allow auto-indenting depending on file type
filetype plugin indent on

"syntax highlighting
syntax on

"colorscheme onedark


"vim plug begins here
"For Neovim : '/plugged'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'   "nerdtree plugin
Plug 'mattn/emmet-vim'       "emmet vim
Plug 'joshdick/onedark.vim'  "one dark theme
Plug 'morhetz/gruvbox'       "gruvbox theme
Plug 'tomasiser/vim-code-dark'   "theme like VScode
Plug 'vim-airline/vim-airline'      "airline
Plug 'vim-airline/vim-airline-themes'   "airline themes

call plug#end()


let g:airline_powerline_fonts = 1   "make airline pretty by using powerline fonts
let g:airline_theme='onedark'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Workaround for nerdtree directory icon not showing when ssh to linux via putty due to fonts
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
"colorscheme onedark
colorscheme gruvbox
"colorscheme codedark


" Remap escape
inoremap jk <Esc>

"emmet-vim config
let g:user_emmet_leader_key=','
