--Remap space as leadery key
vim.api.nvim_set_keymap('','<Space>','<Nop>', { noremap = true, silent = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- mappings
--      <mode>  <keys>  <actions>   <options>
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>u', 'UndotreeShow<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>ps', ':Rg<SPACE>', {noremap=true})
--nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
--nnoremap <leader>gd <Plug>(coc-definition)
--nnoremap <leader>gy <Plug>(coc-type-definition)
--nnoremap <leader>gi <Plug>(coc-implementation)
--nnoremap <leader>gr <Plug>(coc-references)
-- gr clashes with replaceWithregister

vim.api.nvim_set_keymap('n', '<leader>e', ':CocCommand explorer<CR>', {noremap=true})
-- autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

vim.api.nvim_set_keymap('n', '<silent><tab>', ':BufferLineCycleNext<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<silent><s-tab>', ':BufferLineCyclePrev<CR>', {noremap=true})

vim.api.nvim_set_keymap('n', '<c-c>', '"+y', {noremap=false})
vim.api.nvim_set_keymap('v', '<c-c>', '"+y', {noremap=false})
vim.api.nvim_set_keymap('n', '<c-v>', '"+p', {noremap=false})
vim.api.nvim_set_keymap('i', '<c-v>', '<c-r>+', {noremap=true})
vim.api.nvim_set_keymap('c', '<c-v>', '<c-r>+', {noremap=true})
vim.api.nvim_set_keymap('i', '<c-r>', '<c-v>', {noremap=true})
