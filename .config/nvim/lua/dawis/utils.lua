-- [Begin] toggleColorScheme
function toggleColorScheme()
    vim.o.background = vim.o.background == "dark" and "light" or "dark";
    local cmd        = ':silent !echo ' .. vim.o.background .. ' > ~/nvimMisc/colorscheme.txt'
    local termCmd    = ':silent !cp  ~/.config/alacritty/' ..
        vim.o.background .. '.yml ~/.config/alacritty/alacritty.yml'
    vim.cmd(cmd);
    vim.cmd(termCmd);
    local clearStatusline = "highlight clear StatusLine"
    vim.cmd(clearStatusline)
end

-- [End] toggleColorSch

-- [Begin] retreive color scheme
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
local clearStatusline = "highlight clear StatusLine"
vim.cmd(clearStatusline)
-- [End] retreive color scheme


--[Begin] sysout
function printSysOut()

    local line = vim.api.nvim_win_get_cursor(0)[1]

    vim.api.nvim_buf_set_lines(0, line, line, false, { 'System.out.println();' })
    vim.lsp.buf.format { async = true }
    vim.api.nvim_win_set_cursor(0, { line + 1, 18 })
end

--[End] sysout
