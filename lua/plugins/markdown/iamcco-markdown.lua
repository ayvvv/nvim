local M = {}

M.name = 'iamcco/markdown-preview.nvim'

M.install_config = {
    run = "cd app && npm install",
    setup = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" }
}

M.init = function()
end

return M
