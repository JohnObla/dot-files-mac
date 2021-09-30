local module = {}
function module.setup()
  local nvim_lsp = require('lspconfig')

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<space>K', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>af', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>rf', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>lf', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>l', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>dl', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  end

  -- manually setup servers
  nvim_lsp.pyright.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.rust_analyzer.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.tsserver.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.vim.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.yaml.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.html.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.lua.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.json.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.css.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.dockerfile.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
  nvim_lsp.graphql.setup{on_attach = on_attach, flags= {debounce_text_changes = 150,}}
end

return module

