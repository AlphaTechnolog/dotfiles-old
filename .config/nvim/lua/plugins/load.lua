-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'windwp/nvim-autopairs'
  use 'overcache/NeoSolarized'
  use 'nvim-treesitter/nvim-treesitter'
  use 'tami5/lspsaga.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ms-jpq/coq_nvim'
end)
