print('### sourcing packer.lua ###')


--install packer
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[
  packadd packer.nvim
  augroup Packer
      autocmd!
      autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Package manager
    use 'tpope/vim-fugitive' -- Git commands in vim
    use 'mbbill/undotree'
    use 'jremmen/vim-ripgrep'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use {'neoclide/coc.nvim', branch='release'}
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'vim-airline/vim-airline'
    use 'kyazdani42/nvim-web-devicons'
    use 'akinsho/bufferline.nvim'
    use 'simrat39/rust-tools.nvim'
    use 'morhetz/gruvbox'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
