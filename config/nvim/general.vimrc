" general settings

" can paste from clipboard
set clipboard+=unnamedplus

" allows file to be modified by multiple neovim processes
set noswapfile

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" leave some lines after curso when scrolling
set scrolloff=10

" set relative line number
set relativenumber

" set absolute line number as well
set nu

" use 2 spaces instead of tab()
" copy indent from current line when starting a new line
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" allow smartcase
set ignorecase
set smartcase