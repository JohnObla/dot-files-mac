-- plugin manager

-- Packer function
return require('packer').startup(function()
  -- package manager
  use 'wbthomason/packer.nvim'
  -- allows plugins to use the dot repeat
  use 'tpope/vim-repeat'
  -- changes brackets, quotes, and speech marks
  use 'tpope/vim-surround'
  -- automatically closes brackets
  use 'jiangmiao/auto-pairs'
  -- compilation checker
  use 'neovim/nvim-lspconfig'
  -- syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- We recommend updating the parsers on update
  -- vscode color schemes
  use {
    'christianchiarulli/nvcode-color-schemes.vim',
    requires = 'nvim-treesitter/nvim-treesitter'
  }
  -- nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- git diffs in file
  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  -- lsp install
  use {
    'kabouzeid/nvim-lspinstall',
    requires = 'neovim/nvim-lspconfig',
    config = function()
      -- key bindings
      local nvim_lsp = require('lspconfig')
      local on_attach = function(client, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

        buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        local opts = { noremap=true, silent=true }
        buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
        buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
        buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        buf_set_keymap('n', '<space>K', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
        buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
        buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
        buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
        buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        buf_set_keymap('n', '<space>l', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
        buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
        buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
        buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

        -- Set some keybinds conditional on server capabilities
        if client.resolved_capabilities.document_formatting then
          buf_set_keymap("n", "<space>fo", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
        end
        if client.resolved_capabilities.document_range_formatting then
          buf_set_keymap("v", "<space>fo", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
        end

        -- Set autocommands conditional on server_capabilities
        if client.resolved_capabilities.document_highlight then
          vim.api.nvim_exec([[
            hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
            hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
            hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
            augroup lsp_document_highlight
              autocmd! * <buffer>
              autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
              autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
            augroup END
          ]], false)
        end
      end

      -- lspinstall config
      local function setup_servers()
        require'lspinstall'.setup()
        local servers = require'lspinstall'.installed_servers()
        for _, server in pairs(servers) do
          require'lspconfig'[server].setup{}
        end
      end

      setup_servers()

      -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
      require'lspinstall'.post_install_hook = function ()
        setup_servers() -- reload installed servers
        vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
      end
    end
  }
end)
