local M = {}

M.name = 'mhartington/oceanic-next'

M.install_config = {}

M.init = function()
    vim.api.nvim_command('colorscheme OceanicNext')

    vim.api.nvim_command('hi Normal ctermbg=NONE')
    vim.api.nvim_command('hi EndofBuffer ctermbg=None')
    vim.api.nvim_command('hi LineNr ctermbg=None')
    vim.api.nvim_command('hi VertSplit ctermbg=blue')
end

return M
