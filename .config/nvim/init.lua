require("dawis.options")
require("dawis.keymaps")
require("dawis.utils")
require("dawis.plugins")
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
