-- TODO auto get plugin list
local PLUGIN_LIST = {
    require('plugins/file-explorer/nvim-tree'),
    require('plugins/themes/catppuccin'),
    require('plugins/lsp/nvim-lspconfig'),
    require('plugins/lsp/cmp/nvim-cmp'),
    require('plugins/fuzzy-finder/telescope'),
    require('plugins/ast/nvim-treesitter'),
    require('plugins/markdown/iamcco-markdown'),
    require('plugins/pairs/auto-pairs'),
    require('plugins/term/floaterm')
}

local M = {}

M.setup = function(config)
    config = config or {}
    plugin_manage = require'plugins/manage'.get_manage(config.manage)
    plugin_manage.load_plugin(PLUGIN_LIST)
end

return M
