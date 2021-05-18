lua << EOF
-- key bindings
require('keys')
-- general settings
require('general')

EOF

" plugin manager
source $HOME/.config/nvim/plugins.vimrc

" lsp config
source $HOME/.config/nvim/lsp.vimrc

" treesitter config
source $HOME/.config/nvim/treesitter.vimrc

" nvimtree config
source $HOME/.config/nvim/nvimtree.vimrc

" gitsigns config
source $HOME/.config/nvim/gitsigns.vimrc

