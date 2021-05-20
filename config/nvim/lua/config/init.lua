local lsp = require('lsp')
local lsp_install = require('lsp_install')
local compe = require('compe')
local prettier = require('prettier')
local telescope = require('telescope')

local module = {
  lsp = lsp,
  compe = compe,
  lsp_install = lsp_install,
  prettier = prettier,
  telescope = telescope
}

return module
