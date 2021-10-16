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
  use 'vim-crystal/vim-crystal'
  use 'Mofiqul/vscode.nvim'
  use 'joshdick/onedark.vim'
  use 'EdenEast/nightfox.nvim'
  use 'yashguptaz/calvera-dark.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'sunjon/Shade.nvim'
  use 'numToStr/FTerm.nvim'
  use 'folke/twilight.nvim'
  use 'yamatsum/nvim-cursorline'
  use 'jghauser/mkdir.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  use 'karb94/neoscroll.nvim'
end)
