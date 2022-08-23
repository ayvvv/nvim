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
    function load_plugin_config()
        for k, plugin_opt in ipairs(plugins) do
            plugin_opt.init()
        end
    end

    vim.api.nvim_command('PackerInstall')
    
    -- TODO  nvim 7.0 version
    -- vim.api.nvim_create_autocmd(
    --     "User PackerComplete",
    --     {callback = loadPluginConfig}
    -- )
    vim.cmd [[autocmd User PackerComplete lua load_plugin_config()]]

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
