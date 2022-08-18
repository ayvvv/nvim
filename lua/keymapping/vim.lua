-- vim keymapping
-- colemak layout user

local is_colemak_user = true
local map_opt = {silent = true, noremap = true}

-- mouse move
vim.api.nvim_set_keymap('n', 'n', 'j', map_opt);
vim.api.nvim_set_keymap('n', 'e', 'k', map_opt);
vim.api.nvim_set_keymap('n', 'i', 'l', map_opt);
vim.api.nvim_set_keymap('v', 'n', 'j', map_opt);
vim.api.nvim_set_keymap('v', 'e', 'k', map_opt);
vim.api.nvim_set_keymap('v', 'i', 'l', map_opt);
