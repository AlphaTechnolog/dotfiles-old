vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'AlphaTechnolog/onedarker.nvim'
  use 'sainnhe/gruvbox-material'
  use 'whatyouhide/vim-gotham'
  use 'sainnhe/edge'
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
  use 'numToStr/FTerm.nvim'
  use 'jghauser/mkdir.nvim'
  -- use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  use 'karb94/neoscroll.nvim'
  use 'tjdevries/colorbuddy.vim'
  use 'Th3Whit3Wolf/onebuddy'
  use 'marko-cerovac/material.nvim'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'ntk148v/vim-horizon'
  use {"akinsho/toggleterm.nvim"}
  use "overcache/NeoSolarized"
  use 'Mofiqul/dracula.nvim'
  use 'Shatur/neovim-ayu' 
  use 'NTBBloodbath/doom-one.nvim'
  use 'simrat39/symbols-outline.nvim'
  use 'Mangeshrex/uwu.vim'
end)
