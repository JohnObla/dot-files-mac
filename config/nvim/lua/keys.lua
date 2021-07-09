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
map('n','<leader>w',':w<CR>')
map('n','<leader>Q',':q<CR>')
map('n','<leader>q',':Bdelete<CR>') -- use vim bye bye to preserve window

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

-- terminal opens and closes easier
map('n','<leader>te',':terminal<CR>')
map('t','<Esc>','<C-\\><C-n>')

-- auto close jsx/html tags
-- https://www.reddit.com/r/vim/comments/gu5nm0/automatically_close_jsx_tags/fsgppz3?utm_source=share&utm_medium=web2x&context=3
map('i','<C-s>','<esc>yiwi<lt><esc>ea></><esc>hpF>i')
