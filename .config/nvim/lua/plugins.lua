vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {'windwp/nvim-autopairs'}
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'neoclide/coc.nvim', branch = 'release'}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-telescope/telescope-media-files.nvim',
    requires = { {'nvim-lua/popup.nvim'} }
  }
	use 'shaunsingh/moonlight.nvim'
end)