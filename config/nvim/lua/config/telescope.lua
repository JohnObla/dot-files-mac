local module = {}
function module.setup()
  local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end

  local find_command = "{ 'rg', '--files', '--hidden', '-g', '!node_modules/**', '-g', '!.git/**', }"
  require('telescope').setup{
    defaults = {
      vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '--hidden',
        '--glob=!node_modules/**',
        '--glob=!.git/**',
      },
    }
  }


  -- Find files using Telescope command-line sugar.
  map('n','<leader>ff','<cmd>lua require(\'telescope.builtin\').find_files({find_command = ' .. find_command .. ' })<cr>')
  map('n','<leader>fg','<cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
  map('n','<leader>fb','<cmd>Telescope buffers<cr>')
  map('n','<leader>fh','<cmd>Telescope help_tags<cr>')
end

return module
