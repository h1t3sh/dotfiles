set nu
" Remap escape
inoremap jk <Esc>

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'       "gruvbox theme

call plug#end()

syntax on

set background=dark
colorscheme gruvbox
