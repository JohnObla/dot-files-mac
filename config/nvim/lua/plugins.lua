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
  requires = 'neovim/nvim-lspconfig'
}
end)
