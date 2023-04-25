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

function retreiveColorScheme()
    local f = io.open("/home/dawis/nvimMisc/colorscheme.txt", "r");
    local i = 1
    for l in f:lines() do -- lines iterator, "l" returns the line
        if i == 1 then f:close() return l end -- we found this line, return it
        i = i + 1
    end
    return "No content inside the file"
end
