-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  --rename-- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    -- or                            , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }

--    use({
--	    'rose-pine/neovim',
--	    as = 'rose-pine',
--	    config = function()
--		    require("rose-pine").setup()
--		    vim.cmd('colorscheme rose-pine')
--	    end
--    })

    --use('vigoux/oak')

    use({
            'folke/tokyonight.nvim',
	    as = 'tokyonight',
	    config = function()
		    require("tokyonight").setup()
		    vim.cmd('colorscheme tokyonight-night')
	    end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {'williamboman/mason.nvim'},           -- Optional
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},         -- Required
		    {'hrsh7th/cmp-nvim-lsp'},     -- Required
		    {'hrsh7th/cmp-buffer'},       -- Optional
		    {'hrsh7th/cmp-path'},         -- Optional
		    {'saadparwaiz1/cmp_luasnip'}, -- Optional
		    {'hrsh7th/cmp-nvim-lua'},     -- Optional

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},             -- Required
		    {'rafamadriz/friendly-snippets'}, -- Optional
	    }

    }

   -- use {
   --     "folke/trouble.nvim",
   --     requires = "nvim-tree/nvim-web-devicons",
   --     config = function()
   --         require("trouble").setup {
   --             -- your configuration comes here
   --             -- or leave it empty to use the default settings
   --             -- refer to the configuration section below
   --         }
   --     end
   -- }


    use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
  end,
})

--use("jacoborus/tender.vim")
use("AlexvZyl/nordic.nvim")

end)
