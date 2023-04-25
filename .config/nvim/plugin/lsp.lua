--completion stuff will move later 
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.opt.completeopt={"menu", "menuone", "noselect"}

  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
         require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
       { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    })
  })

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
--
--local cmp_autopairs = require('nvim-autopairs.completion.cmp')
--local cmp = require('cmp')
--cmp.event:on(
  --'confirm_done',
  --cmp_autopairs.on_confirm_done()
--)

-- End of completeion stuff
local on_attach = function(client, bufnr)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
--vim.keymap.set("n", "K", vim.lsp.buf.hover())
vim.keymap.set("n", "K", vim.lsp.buf.signature_help)

end

local sumneko_binary =    "/home/dawis/lsp-servers/lua-language-server/bin/lua-language-server"
require'lspconfig'.lua_ls.setup {
--    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {sumneko_binary},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}
require'lspconfig'.texlab.setup{}
