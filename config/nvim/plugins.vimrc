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
" nvim tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" git diffs in file
Plug 'nvim-lua/plenary.nvim' " dependancy
Plug 'lewis6991/gitsigns.nvim'
" highlighted yank
Plug 'machakann/vim-highlightedyank'
" lsp install
Plug 'kabouzeid/nvim-lspinstall'
call plug#end()

" highlighted yank settings
let g:highlightedyank_highlight_duration = 250

