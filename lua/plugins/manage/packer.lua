-- packer plugins manage 

local M = {}

M.name = 'packer'
M.download_url = 'https://github.com/wbthomason/packer.nvim'
M.download_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

M.install = function()
    local file, err = io.open(M.download_path)

    if file ~= nil then
        return
    end

    print('installing package manager plugin [[packer]] ...')

    vim.fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        M.download_url,
        M.download_path
    })

    print('[[packer]] has been installed successful')

    vim.cmd [[packadd packer.nvim]]
end

M.load_plugin = function(plugins)
    function CodeRunner()
        for k, plugin_opt in ipairs(plugins) do
            plugin_opt.init()
        end
    end

    require'nvim-tree'.setup{
        auto_reload_on_write = true,
        create_in_closed_folder = false,
        disable_netrw = false,
        hijack_cursor = false,
        hijack_netrw = true,
        hijack_unnamed_buffer_when_opening = false,
        ignore_buffer_on_setup = false,
        open_on_setup = false,
        open_on_setup_file = false,
        open_on_tab = false,
        sort_by = "name",
        update_cwd = false,
        reload_on_bufenter = false,
        respect_buf_cwd = false,
        view = {
            width = 30,
            height = 30,
            hide_root_folder = false,
            side = "left",
            preserve_window_proportions = false,
            number = false,
            relativenumber = false,
            signcolumn = "yes",
            mappings = {
                custom_only = false,
                list = {
                -- user mappings go here
                },
            },
        },
        renderer = {
          add_trailing = false,
          group_empty = false,
          highlight_git = false,
          highlight_opened_files = "none",
          root_folder_modifier = ":~",
          indent_markers = {
            enable = false,
            icons = {
              corner = "└ ",
              edge = "│ ",
              none = "  ",
            },
          },
          icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              folder = {
                arrow_closed = "",
                arrow_open = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
              },
              git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
              },
            },
          },
          special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        },
        hijack_directories = {
          enable = true,
          auto_open = true,
        },
        update_focused_file = {
          enable = false,
          update_cwd = false,
          ignore_list = {},
        },
        ignore_ft_on_setup = {},
        system_open = {
          cmd = "",
          args = {},
        },
        diagnostics = {
          enable = false,
          show_on_dirs = false,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },
        filters = {
          dotfiles = false,
          custom = {},
          exclude = {},
        },
        git = {
          enable = true,
          ignore = true,
          timeout = 400,
        },
        actions = {
          use_system_clipboard = true,
          change_dir = {
            enable = true,
            global = false,
            restrict_above_cwd = false,
          },
          expand_all = {
            max_folder_discovery = 300,
          },
          open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
              enable = true,
              chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
              exclude = {
                filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                buftype = { "nofile", "terminal", "help" },
              },
            },
          },
          remove_file = {
            close_window = true,
          },
        },
        trash = {
          cmd = "trash",
          require_confirm = true,
        },
        live_filter = {
          prefix = "[FILTER]: ",
          always_show_folders = true,
        },
        log = {
          enable = false,
          truncate = false,
          types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false,
          },
        }
    }

    -- vim.api.nvim_command('PackerInstall')

    -- CodeRunner();
    -- vim.api.nvim_create_autocmd(
    --     "User PackerComplete",
    --     {
    --         pattern = "*",
    --         callback = function()
    --             print('完成')
    --         end
    --     }
    -- )
    -- vim.cmd [[autocmd User PackerComplete lua CodeRunner()]]

end

M.load_plugin_config = function(plugins)
    require'packer'.startup(function(use)
        use 'wbthomason/packer.nvim'

        for k, plugin_opt in ipairs(plugins) do
            plugin_opt.install_config[1] = plugin_opt.name
            
            use(plugin_opt.install_config)
        end
    end)
end

return M
