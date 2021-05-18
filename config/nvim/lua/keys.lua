-- custom key bindings

-- helper function - https://oroques.dev/notes/neovim-init/
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- set leader to space
vim.g.mapleader = " "
map('n','<space>','<nop>') -- ignore usual space action

-- reload vimrc
map('n','<leader>rv',':source $MYVIMRC<CR>')

-- file save and file quit
map('n','<leader><leader>w',':w<CR>')
map('n','<leader><leader>q',':q<CR>')

-- makes window navigation easier
map('n','<C-h>','<C-w>h')
map('n','<C-j>','<C-w>j')

map('n','<C-k>','<C-w>k')
map('n','<C-l>','<C-w>l')

-- rebind horizontal split
map('n','<C-w>h','<C-w>s')

-- buffer next shortcut
map('n','<leader>bn',':bn<CR>')
map('n','<leader>bp',':bp<CR>')

