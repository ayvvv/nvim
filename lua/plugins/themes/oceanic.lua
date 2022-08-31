local M = {}

M.name = 'mhartington/oceanic-next'

M.install_config = {}

M.init = function()
    vim.api.nvim_command('colorscheme OceanicNext')
end

return M
