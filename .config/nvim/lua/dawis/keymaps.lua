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
keymap("n", "<C-h>", ":silent !~/find-tmux-session.sh<cr>", opts)

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
keymap("n", "<Leader>toggle", ":lua toggleColorScheme()<CR>", opts)

-- Navigate through project helpers 
keymap("n", "<Leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<Leader>fw", ":Telescope live_grep<cr>", opts)
keymap("n", "<Leader>lb", ':ls<CR>:buffer<Space>', opts)
keymap("n", "<Leader>tt", ":NvimTreeToggle<cr>", opts)
keymap("n", "<Leader>tf", ":NvimTreeFindFileToggle<cr>", opts)
--keymap("n", "<C-j>", ":bprev<cr>", opts)
--keymap("n", "<C-k>", ":bnext<cr>", opts)
--keymap("n", "q", ":bdelete<cr>", opts)


--Useful Edits
keymap("n", "<Leader>u", ":UndotreeToggle<cr>", opts)

--LSP
keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<Leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<Leader>form", ":lua vim.lsp.buf.format{async = true}<cr>", opts)
keymap("n", "<Leader>rf", ":lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<Leader>rn", ":lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<Leader>ds", ":lua vim.diagnostic.setqflist({ open = false})<CR> :vertical rightbelow 75 copen<CR>", opts)

--nvim dap 
keymap("n", "<Leader>bp", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<Leader>ui", ":lua require'dapui'.toggle()<CR>", opts)
keymap("n", "<F7>", ":lua require'dap'.run_last()<CR>", opts)
keymap("n", "<F8>", ":lua require'dap'.continue()<CR>", opts)
keymap("n", "<Leader>run", ":lua require'dap'.continue()<CR>", opts)
keymap("n", "<F9>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F10>", ":lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F11>", ":lua require'dap'.step_out()<CR>", opts)
keymap("n", "<F12>", ":lua require'dap'.terminate()<CR>", opts)



--Custom commands
--keymap("n", "<Leader>run", ":silent !tmux split-window -c $(dirname %:p) '~/execute.sh %:t; bash'<cr>", opts) -- runs appropriate compile commands depending on file type
--keymap("n", "<Leader>cmd", ":!~/tmux-cmd.sh<cr>", opts) -- opens vs split window on bottom half when there is more than 1 pane

