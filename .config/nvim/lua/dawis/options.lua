vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = "~/.undodir"
--vim.opt.undofile = true

--incremental search eg. undo.*
--incase you don't the entire term
vim.opt.incsearch = true

vim.opt.scrolloff = 8
--use system clipboard in neovim
vim.opt.clipboard = 'unnamedplus'
vim.opt.spell = false
vim.opt.ignorecase = true


--diff settings
vim.opt.diffopt = "vertical"
--vim.opt.foldmethod = "manual"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.opt.splitright = true
vim.opt.hlsearch = false
vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.opt.backupdir = "~/backups"
