local M = {}

local languages = {
    -- require('plugins/lsp/language/c++'),
    -- require('plugins/lsp/language/rust'),
    -- require('plugins/lsp/language/java'),
    -- require('plugins/lsp/language/python'),
    -- require('plugins/lsp/language/golang'),

    require('plugins/lsp/language/typescript'),
    -- require('plugins/lsp/language/vue'),
    -- require('plugins/lsp/language/vue3'),
    -- require('plugins/lsp/language/react'),
    -- require('plugins/lsp/language/angularjs')
}

M.load = function()
    for _, language in ipairs(languages) do
        language.load()
    end
end

return M
