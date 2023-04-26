-- main

local M = {}

function M.setup(config)
    config = config or {}

    require('plugins').setup(config.plugins)
    require('keymapping')
    require('editor')
end

return M

