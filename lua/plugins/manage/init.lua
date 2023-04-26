local DEFAULT_MANAGE = 'lazy'

local packer_manage = require'plugins/manage/packer'
local lazy_manage = require'plugin/manage/lazy'

local MANAGE_MAP = {
    [packer_manage.name] = packer_manage,
    [lazy_manage.name] = lazy_manage
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
