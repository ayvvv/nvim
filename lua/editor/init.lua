-- nvim editor config

vim.api.nvim_set_var('nvim_set_var', ';');

vim.g.mapleader = ';';
vim.wo.number = true;
vim.wo.relativenumber = true;
vim.o.shiftwidth = 4;
vim.o.tabstop = 4;
vim.o.expandtab = true;

vim.api.nvim_set_keymap('n', '<space>n', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>e', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>i', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>h', '<C-w>h', { noremap = true, silent = true })