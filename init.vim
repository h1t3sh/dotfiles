set showmatch			        	"show matching brackets
set ignorecase  		        	"case insensitive matching
set hlsearch    		        	"highlight search results
set incsearch   		        	"Display all search result
set tabstop=4   		        	"Number of columns occupied by a tab character
set softtabstop=4   	        	"see multiple spaces as tabstop
set expandtab       	        	"convert tab to whitespaces
set shiftwidth=4    	        	"width for autoindents
set autoindent      	        	"indent a new line the same amount as the line just typed
set number      		        	"add line numbers
set hidden                          "buffers
filetype plugin indent on           "allow auto-indenting depending on filetype
syntax on  			                "syntax Highlighting
set termguicolors


""""""""""""Vim Plug Begins Here"""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'              "gruvbox theme
Plug 'vim-airline/vim-airline'      "airline
Plug 'jiangmiao/auto-pairs'     "auto pairing
Plug 'joshdick/onedark.vim'         "one dark theme
Plug 'mattn/calendar-vim'

call plug#end()

""""""""""""Vim Plug Ends Here"""""""""""""""""""

""""""ColorScheme"""""""""
set background=dark
colorscheme gruvbox
"set t_Co=256
let g:airline_powerline_fonts = 1
"set termguicolors

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

""""""""""""""""""""""""""

""""""Custome Key Mapping"""""""
" Remap escape
inoremap jk <Esc>
let mapleader = ","

"""""""""""""""""""""""""""""""

"Buffer
nnoremap <leader>b :b<Space>

nnoremap <Leader>f :bn<CR>
nnoremap <Leader>b :bp<CR>

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

