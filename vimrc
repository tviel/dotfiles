syntax on

set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch


filetype plugin on

set path+=**
set path+=**
set wildmenu

set guifont=Inconsolata:h12

" neovide
let g:neovide_transparency=0.8

" airline
let g:airline#extensions#bufferline#enabled=1

call plug#begin('~/.vim/plugged') "use vim standard also with neovim to be cross
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'mbbill/undotree'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'OmniSharp/omnisharp-vim'
Plug 'vim-airline/vim-airline'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/bufferline.nvim'

Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'

" Initialize plugin system
call plug#end()

set background=dark
let g:sonokai_style='shusia'
colorscheme gruvbox
"sonokai

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

lua << EOF
require("bufferline").setup{}
EOF

" has to be set after loading the colorscheme to keep transparency
set colorcolumn=80
hi ColorColumn ctermbg=0 guibg=black 
"lightgrey
hi Normal ctermbg=None guibg=None
hi NonText ctermbg=None guibg=None

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gy <Plug>(coc-type-definition)
nnoremap <leader>gi <Plug>(coc-implementation)
nnoremap <leader>gr <Plug>(coc-references) 
"gr clashes with replaceWithregister

nnoremap <leader>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

nnoremap <silent><tab> :BufferLineCycleNext<CR>
nnoremap <silent><s-tab> :BufferLineCyclePrev<CR>


nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
inoremap <c-r> <c-v>
