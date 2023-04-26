local M = {}

M.name = 'nvim-telescope/telescope.nvim'

M.install_config = {
    requires = {
        'nvim-lua/plenary.nvim',
        'xiyaowong/telescope-emoji.nvim'
    },
}

M.init = function()
    
    local leader = vim.g.mapleader
    local keymap = vim.api.nvim_set_keymap
    telescope = require('telescope.builtin')
    
    require('telescope').load_extension('cd')

    keymap('n', leader..'/f', ':lua telescope.find_files()<CR>', { noremap = true, silent = true })
    keymap('n', leader..'/w', ':lua telescope.live_grep()<CR>', { noremap = true, silent = true })
    keymap('n', leader..'/b', ':lua telescope.buffers()<CR>', { noremap = true, silent = true })
    keymap('n', leader..'/h', ':lua telescope.help_tags()<CR>', { noremap = true, silent = true })
    keymap('n', leader..'/c', ':Telescope cd<CR>', { noremap = true, silent = true })
end

return M

