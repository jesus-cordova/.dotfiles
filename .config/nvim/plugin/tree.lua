local gwidth = vim.api.nvim_list_uis()[1].width
local gheight = vim.api.nvim_list_uis()[1].height
local width = 60
local height = 20
require("nvim-tree").setup({
    view = {
        number = true,
        relativenumber = true,
        float = {
            enable = true,
            quit_on_focus_loss = true,
            open_win_config = {
                relative = "editor",
                border = "rounded",
                width = 50,
                height = 20,
                row = (gheight - height) * 0.4,
                col = (gwidth - width) * 0.5,
            }
        },
    },

    renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        highlight_modified = "none",
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
        indent_markers = {
            enable = false,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            modified_placement = "after",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false,
                modified = false,
            },
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                modified = "●",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    }
})
