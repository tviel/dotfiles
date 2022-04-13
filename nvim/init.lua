require('plugins')
require('mappings')


-- HOME = os.getenv("HOME")

vim.opt.compatible = false
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.nu = true 
vim.opt.rnu = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir=HOME .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true

vim.cmd([[
	filetype plugin on
	set path+=**
]])

vim.opt.wildmenu = true

vim.opt.guifont = "Inconsolata:h12"

-- neovide
vim.g.neovide_transparency = 0.8

-- airline
vim.g['airline#extensions#bufferline#enabled']=1

vim.opt.background='dark'


vim.cmd([[
colorscheme gruvbox
]])

-- Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
-- If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
-- (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
vim.cmd([[
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
]])

require("bufferline").setup{}
require("rust-tools").setup{}

-- has to be set after loading the colorscheme to keep transparency
vim.cmd([[
set colorcolumn=80
hi ColorColumn ctermbg=0 guibg=black 
hi Normal ctermbg=None guibg=None
hi NonText ctermbg=None guibg=None
]])
