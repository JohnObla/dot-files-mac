local module = {}

function module.setup()
  local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end

  -- async by default
  vim.cmd'let g:prettier#exec_cmd_async = 1'
end

return module
