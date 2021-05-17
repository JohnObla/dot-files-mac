" general settings
source $HOME/.config/nvim/general.vimrc

lua << EOF
-- key bindings
require('keys')

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

