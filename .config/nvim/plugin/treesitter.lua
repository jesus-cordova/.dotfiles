require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "java", "lua" },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    }
}
