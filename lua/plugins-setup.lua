vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		"catppuccin/nvim",
		as = "catppuccin",
 	})
	use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }

	use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
	})

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

    use({ "glepnir/lspsaga.nvim", branch = "main" })
    
    -- Formatting
    use "stevearc/conform.nvim"

    -- Debugger
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui") 

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

	-- Markdown
	use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end})
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
 
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    use "lewis6991/gitsigns.nvim"
end)
