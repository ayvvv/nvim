local M = {}

M.name = 'kyazdani42/nvim-tree.lua'

M.install_config = {
    requires = 'kyazdani42/nvim-web-devicons', -- file icon
}

M.init = function()
    require'nvim-tree'.setup(require('plugins/file-explorer/config'))

    -- TOOD collect keymap for preview on float window
    local leader = vim.g.mapleader
    vim.api.nvim_set_keymap('n', leader..'fo', ':NvimTreeOpen<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', leader..'fc', ':NvimTreeClose<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', leader..'ft', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', leader..'ff', ':NvimTreeFocus<CR>', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('n', leader..'frs', ':NvimTreeResize ', {noremap = true})
end

return M
