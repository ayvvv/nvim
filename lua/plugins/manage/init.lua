local DEFAULT_MANAGE = 'packer'
local PACKER_MANAGE = require'plugins/manage/packer'
local MANAGE_MAP = {
    [PACKER_MANAGE.name] = PACKER_MANAGE
}

local M = {}

M.get_and_install_manage = function(manage)
    manage = manage or DEFAULT_MANAGE
    plugin_manage = MANAGE_MAP[manage]

    -- TODO plugin_manage 不存在抛出异常

    plugin_manage.install()

    return plugin_manage
end

return M;
