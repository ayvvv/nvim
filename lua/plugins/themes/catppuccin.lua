local M = {}

M.name = 'catppuccin/nvim'

M.install_config = {}

M.init = function()
    require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = true,
        show_end_of_buffer = true, -- show the '~' characters after the end of buffers
        term_colors = false,
        dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.15,
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        styles = {
            comments = { "italic" },
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            telescope = true,
            notify = false,
            mini = false,
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
    })

    vim.api.nvim_command('colorscheme catppuccin')

    vim.api.nvim_command('hi Normal ctermbg=NONE')
    vim.api.nvim_command('hi EndofBuffer ctermbg=None')
    vim.api.nvim_command('hi LineNr ctermbg=None')
    vim.api.nvim_command('hi VertSplit ctermbg=blue')

end

return M
