local M = {}

M.name = 'neovim/nvim-lspconfig'

M.install_config = {}

M.init = function()
    require'plugins/lsp/language'.load()
end

return M

