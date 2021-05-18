local lsp = require('lsp')
local lsp_install = require('lsp_install')
local compe = require('compe')

local module = {
  lsp = lsp,
  compe = compe,
  lsp_install = lsp_install
}

return module
