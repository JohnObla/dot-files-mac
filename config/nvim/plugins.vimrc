" contains plugin manager

call plug#begin('~/.config/nvim/plugged')
" allows plugins to use the dot repeat
Plug 'tpope/vim-repeat'
" changes brackets, quotes, and speech marks
Plug 'tpope/vim-surround'
" automatically closes brackets
Plug 'jiangmiao/auto-pairs'
" lsp config
Plug 'neovim/nvim-lspconfig'
call plug#end()
