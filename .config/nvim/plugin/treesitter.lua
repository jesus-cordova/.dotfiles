require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "java", "lua" },
    highlight = {
        enable = true,
    }
}

function retreiveColorScheme()
    local f = io.open("/home/dawis/nvimMisc/colorscheme.txt", "r");
    local i = 1
    for l in f:lines() do -- lines iterator, "l" returns the line
        if i == 1 then f:close() return l end -- we found this line, return it
        i = i + 1
    end
    return "No content inside the file"
end
vim.o.background = retreiveColorScheme();
vim.cmd.colorscheme("neobones")
local clearStatusline  = "highlight clear StatusLine"
vim.cmd(clearStatusline)
