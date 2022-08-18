-- main

local M = {}

function M.setup(config)
    config = config or {}

    vim.g.mapleader = ';'

    require('plugins').setup(config.plugins)
    require('keymapping')
end

return M
