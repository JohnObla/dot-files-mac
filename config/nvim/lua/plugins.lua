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
  -- syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- We recommend updating the parsers on update
  -- vscode color schemes
  use {
    'christianchiarulli/nvcode-color-schemes.vim',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        highlight = {
          enable = true,              -- false will disable the whole extension
        },
        indent = {
          enable = true
        },
      }
    end
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
  -- compilation checker
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp').setup()
    end
  }
  -- lsp install
  use {
    'kabouzeid/nvim-lspinstall',
    requires = 'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp_install').setup()
    end
  }
  -- code completion
  use {
    'hrsh7th/nvim-compe',
    config = function()
      require('config.compe').setup()
    end
  }
  -- prettier formatter
  use {
    'prettier/vim-prettier',
    run = 'yarn install',
    config = function ()
      require('config.prettier').setup()
    end
  }
  -- telescope fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    },
    config = function ()
      require('config.telescope').setup()
    end
  }
  -- window resizer
  use 'simeji/winresizer'
  -- commenter
  use 'tpope/vim-commentary'
  -- split and join multiline code
  use 'AndrewRadev/splitjoin.vim'
  -- close file without closing window
  use 'moll/vim-bbye'
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    -- your statusline
    config = function()
      require('config.galaxyline')
    end
  }
end)

