-- TODO auto get plugin list
local PLUGIN_LIST = {
    require('plugins/file-explorer/nvim-tree'),
    require('plugins/themes/oceanic'),
    require('plugins/lsp/nvim-lspconfig'),
    require('plugins/lsp/cmp/nvim-cmp')
}

local M = {}

M.setup = function(config)
    config = config or {}
    plugin_manage = require'plugins/manage'.get_manage(config.manage)
    plugin_manage.load_plugin(PLUGIN_LIST)
end

return M
