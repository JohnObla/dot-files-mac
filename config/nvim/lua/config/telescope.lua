local module = {}
function module.setup()
  local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
  -- Find files using Telescope command-line sugar.
  map('n','<leader>ff','<cmd>Telescope find_files<cr>')
  map('n','<leader>fg','<cmd>Telescope live_grep<cr>')
  map('n','<leader>fb','<cmd>Telescope buffers<cr>')
  map('n','<leader>fh','<cmd>Telescope help_tags<cr>')

end

return module
