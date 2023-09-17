vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                       , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		"catppuccin/nvim",
		as = "catppuccin",
 	})
	use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }
	-- Syntax highlighting	
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	-- tree file explorer
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	
	-- status bar
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	-- LSP Support
	use {
    	"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
    	"neovim/nvim-lspconfig",
	}

	-- Completion
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"    
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use {
		"windwp/nvim-autopairs",
		as = "nvim-autopairs",
	}
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-path'                              
	use {'numToStr/Comment.nvim'}
end)


