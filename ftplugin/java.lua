-- following the advice form https://github.com/mfussenegger/nvim-jdtls
-- this script requires the lib plenary for some file operations


local function get_config_dirname()
    return "config_linux"
    -- local os_info = vim.loop.os_uname()
    -- local os_name = os_info.system:lower()
    -- if os_name:match("linux") then
    --     return "config_linux"
    -- elseif os_name:match("darwin") then
    --     return "config_mac"
    -- elseif os_name:match("windows") then
    --     return "config_win"
    -- else 
    --     error("Could not determine os from name " .. os_name)
    -- end
end

local function project_name()
    return vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
    -- try to get the root dir of the project by 
    -- looking for the .git folder.
    -- If this fails it will take the current working
    -- directory as default

    -- local home_dir = vim.fn.expand("~")
    -- local cd = vim.fn.getcwd()

    -- local fs = require("plenary.fs")

    -- while cd and cd ~= home_dir do
    --     if fs.exists(fs.join(cd, ".git")) then
    --         break;
    --     end
    --     cd = fs.dirname(cd)
    -- end

    -- if cd:match(home_dir) then
    --     cd = vim.fn.getcwd()
    -- end

    -- return vim.fn.fnamemodify(cd, ":p:h:t")
end

local function find_jar_file(partial_name)
    return vim.fn.stdpath("data") .. "/mason/share/jdtls/plugins/org.eclipse.equinox.launcher_1.6.1100.v20250306-0509.jar"
    -- local fs = require("plenary.fs")
    -- local start_dir = vim.fn.stdpath("data") .. "/mason/share/jdtls/plugins"

    -- local jdtls_package_dir = vim.fn.stdpath("data") .. "/mason/package/jdtls/"

    -- local function find_recursive(dir)
    --     local entries = fs.listdir(dir)
    --     if not entries then return nil end

    --     for _, entry in ipairs(entries) do
    --         local full_path = fs.join(dir, entry)
    --         print(" -> " .. full_path)
    --         if fs.is_dir(full_path) then
    --             local found = find_recursive(full_path)
    --             if found then
    --                 return found
    --             end
    --         elseif fs.is_file(full_path) and entry:match(partial_name .. "*%.jar$") then
    --             return full_path
    --         end
    --     end
    --     return nil
    -- end

    -- return find_recursive(start_dir)
end

local config = {
    cmd = {
        'java',

        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xmx1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', find_jar_file("org.eclipse.equinox.launcher_1."),
        '-configuration', vim.fn.stdpath("data") .. "/mason/package/jdtls/" .. get_config_dirname(),
        "-data", "/tmp" .. project_name(),
    },
    root_dir = vim.fn.root(0, {".git", "mvnw", "gradlew"})
}

require("jdtls").start_or_attach(config)

