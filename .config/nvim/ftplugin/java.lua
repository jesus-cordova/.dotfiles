
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local workspace_dir = '/home/dawis/workspace/' .. project_name
-- This bundles definition is the same as in the previous section (java-debug installation)
local bundles = { vim.fn.glob('/home/dawis/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.43.0.jar'), }

-- This is the new part
vim.list_extend(bundles, vim.split(vim.fn.glob("/home/dawis/vscode-java-test/server/*.jar"), "\n"))
local config = {
    cmd = {
        --'/home/dawis/usr/lib/jvm/java-17-openjdk-amd64/bin/java', -- or '/path/to/java17_or_newer/bin/java'
        'java',
        -- depends on if `java` is in your $PATH env variable and if it points to the right version.

        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', vim.fn.glob('/home/dawis/lsp-servers/java/plugins/org.eclipse.equinox.launcher_*.jar'),
        '-configuration', '/home/dawis/lsp-servers/java/config_linux',
        '-data', workspace_dir
        --'-data', 'home/dawis/Downloads'
    },
    --    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),


    -- Language server `initializationOptions`
    -- You need to extend the `bundles` with paths to jar files
    -- if you want to use additional eclipse.jdt.ls plugins.
    --
    -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
    --
    -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
    init_options = {
        bundles = bundles
    },


}

config['on_attach'] = function(client, bufnr)
    local jdtls = require('jdtls')
    jdtls.setup_dap({ hotcodereplace = 'auto' })
    jdtls.setup.add_commands()
    require("jdtls.dap").setup_dap_main_class_configs()
end

require('jdtls').start_or_attach(config)

