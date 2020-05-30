set showmatch	"show matching brackets
set ignorecase	"case insensitive matching
set hlsearch	"highlight search results
set incsearch 	"Display all search result
set tabstop=4	"Number of columns occupied by a tab character
set softtabstop=4	"see multiple spaces as tabstop
set expandtab		"convert tab to whitespaces
set shiftwidth=4	"width for autoindents
set autoindent		"indent a new line the same amount as the line just typed
set number		"add line numbers
filetype plugin indent on	"allow auto-indenting depending on filetype
syntax on	"syntax Highlighting
set termguicolors


""""""""""Vim Plug Begins Here""""""""

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'          "gruvbox theme
Plug 'jiangmiao/auto-pairs'     "auto pairing
Plug 'mattn/calendar-vim'       "Calender Plugin
Plug 'vim-airline/vim-airline'      "airline


call plug#end()

"""""""""""Vim Plug Ends Here""""""""

"Colorscheme
set background=dark
colorscheme gruvbox
let g:airline_powerline_fonts = 1

""""Custom Key Mapping""""
"Remap escape
inoremap jk <Esc>
