return require("packer").startup(function(use)

    use 'wbthomason/packer.nvim'


    --theme
    use { "ellisonleao/gruvbox.nvim" }
    use {
        "mcchrish/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        requires = "rktjmp/lush.nvim"
    }
    use("tpope/vim-fugitive")

    --MLE plugins
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use('mbbill/undotree')
    use { 'nvim-tree/nvim-tree.lua' }
    use { 'nvim-tree/nvim-web-devicons' }
    --use { 'akinsho/bufferline.nvim' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --completion/treesitter
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    --lsp
    use { 'mfussenegger/nvim-jdtls' }
    use { 'neovim/nvim-lspconfig' }

    --debug
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'

    --note
    use {
        "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                            default_workspace = "notes"
                        },
                    },
                },
            }
        end,
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
    }

end)
