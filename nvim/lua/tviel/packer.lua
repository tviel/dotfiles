-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "ellisonleao/gruvbox.nvim" }

  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
    end,
    }
    use('mbbill/undotree')
    use('tpope/vim-fugitive')


	
--    use 'jremmen/vim-ripgrep'
 --   use 'tpope/vim-surround'
  --  use 'tpope/vim-commentary'
   -- use {'neoclide/coc.nvim', branch='release'}
--    use 'neovim/nvim-lspconfig'
--    use 'williamboman/nvim-lsp-installer'
--    use 'hrsh7th/nvim-cmp'
--    use 'hrsh7th/cmp-nvim-lsp'
--    use 'hrsh7th/cmp-vsnip'
 --   use 'hrsh7th/cmp-path'
 --   use 'hrsh7th/cmp-buffer'
--    use 'hrsh7th/vim-vsnip'
--    use 'nvim-treesitter/nvim-treesitter'
--    use 'vim-airline/vim-airline'
--    use 'kyazdani42/nvim-web-devicons'
--    use 'akinsho/bufferline.nvim'
--    use 'simrat39/rust-tools.nvim'

end)
