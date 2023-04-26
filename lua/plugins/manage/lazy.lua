-- packer plugins manage 

local M = {}

M.name = 'lazy'
M.download_url = 'https://github.com/folke/lazy.nvim.git'
M.download_path = vim.fn.stdpath('data')..'/lazy/lazy.nvim'

M.install = function()
    local file, err = io.open(M.download_path)
    
    if file ~= nil then
        return
    end

    -- TODO 换一种更加友好的安装方式 start
    print('installing package manager plugin [[packer]] ...')

    
    print('[[packer]] has been installed successful')
    -- end
end

M.load_plugin = function(plugins)
    -- vim.cmd [[packadd packer.nvim]]

    -- require'packer'.startup(function(use)
    --     use 'wbthomason/packer.nvim'

    --     for k, plugin_opt in ipairs(plugins) do
    --         plugin_opt.install_config[1] = plugin_opt.name
    --         
    --         use(plugin_opt.install_config)
    --     end
    -- end)
    -- 
    -- vim.api.nvim_command('PackerInstall')

    -- function load_plugin_config()
    --     for k, plugin_opt in ipairs(plugins) do
    --         plugin_opt.init()
    --     end
    -- end
    -- 
    -- -- TODO  nvim 7.0 version
    -- -- vim.api.nvim_create_autocmd(
    -- --     "User PackerComplete",
    -- --     {callback = loadPluginConfig}
    -- -- )
    -- --
    -- vim.cmd [[autocmd User PackerComplete lua load_plugin_config()]]
end

M.load_plugin_config = function(plugins)
    
end

return M
