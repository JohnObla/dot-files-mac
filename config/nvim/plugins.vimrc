" contains plugin manager

call plug#begin('~/.config/nvim/plugged')
" allows plugins to use the dot repeat
Plug 'tpope/vim-repeat'
" changes brackets, quotes, and speech marks
Plug 'tpope/vim-surround'
" automatically closes brackets
Plug 'jiangmiao/auto-pairs'
" compilation checker
Plug 'neovim/nvim-lspconfig'
" syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" vscode color schemes
Plug 'christianchiarulli/nvcode-color-schemes.vim'
call plug#end()
