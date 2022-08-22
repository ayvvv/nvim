local PLUGIN_LIST = {
    require('plugins/file-explorer/nvim-tree')
}

local M = {}

M.setup = function(config)
    config = config or {}

    plugin_manage = require'plugins/manage'.get_and_install_manage(config.manage)

    plugin_manage.load_plugin_config(PLUGIN_LIST)
    plugin_manage.load_plugin(PLUGIN_LIST)
end

return M
