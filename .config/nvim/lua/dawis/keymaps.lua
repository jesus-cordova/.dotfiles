-- replacing number 2
-- now  replacing
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--External linux scripts
keymap("n", "<C-f>", ":silent !~/tmux-session.sh<cr>", opts)
keymap("n", "<C-r>", ":silent !~/find-tmux-session.sh<cr>", opts)

--default neovim remaps
keymap("i", "jj", "<ESC>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<S-h>", ":vertical resize -5<cr>", opts)
keymap("n", "<S-j>", ":resize -5<cr>", opts)
keymap("n", "<S-k>", ":resize +5<cr>", opts)
keymap("n", "<S-l>", ":vertical resize +5<cr>", opts)
--keep cursor centered of page when navigating
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

--keep pasted space in register
keymap("x", "p", [["_dP]], opts)

keymap("n", "<Leader>sb", ":ls<CR>:vertical sb<space>", opts)
keymap("n", "<Leader>color", ":lua toggleColorScheme()<CR>", opts)

-- Navigate through project helpers
keymap("n", "<Leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<Leader>fw", ":Telescope live_grep<cr>", opts)
keymap("n", "<Leader>lb", ':ls<CR>:buffer<Space>', opts)
keymap("n", "<Leader>t", ':lua require("oil").open()<cr>', opts)
--harpoon
keymap("n", "<Leader>m", ':lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)
keymap("n", "<Leader>a", ':lua require("harpoon.mark").add_file()<cr>', opts)
keymap("n", "<C-j>", ':lua require("harpoon.ui").nav_next()<cr>', opts)
keymap("n", "<C-k>", ':lua require("harpoon.ui").nav_prev()<cr>', opts)

--code shortcuts
keymap("n", "<Leader>sout", ":lua printSysOut()<CR>", opts)

--Useful Edits
keymap("n", "<Leader>u", ":UndotreeToggle<cr>", opts)

--LSP
keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gh", ":lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<Leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<Leader>form", ":lua vim.lsp.buf.format{async = true}<cr>", opts)
keymap("n", "<Leader>rf", ":lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<Leader>rn", ":lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<Leader>ds", ":lua vim.diagnostic.setqflist({ open = false})<CR> :vertical rightbelow 75 copen<CR>", opts)

--nvim dap
keymap("n", "<Leader>bp", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<Leader>ui", ":lua require'dapui'.toggle()<CR>", opts)
keymap("n", "<Leader>run", ":lua require'dap'.continue()<CR>", opts)
