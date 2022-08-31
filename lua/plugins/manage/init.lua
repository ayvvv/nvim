local DEFAULT_MANAGE = 'packer'
local PACKER_MANAGE = require'plugins/manage/packer'
local MANAGE_MAP = {
    [PACKER_MANAGE.name] = PACKER_MANAGE
}

local M = {}

M.get_manage = function(manage)
    manage = manage or DEFAULT_MANAGE
    plugin_manage = MANAGE_MAP[manage]

    -- TODO throw err if plugin is not exist

    plugin_manage.install()

    return plugin_manage
end

return M;
