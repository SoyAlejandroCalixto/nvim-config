-- more information on how this works is available at -> https://lsp-zero.netlify.app/docs/getting-started.html

-- Add cmp_nvim_lsp capabilities settings to lspconfig
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- enable features that only work if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

-- mason config
-- mason is the plugin that allows you to install lsp more easily by placing their names in the 'ensure_installed' list
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'pyright', 'html', 'cssls', 'eslint', 'tailwindcss', 'ts_ls', 'emmet_language_server', 'rust_analyzer'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

-- treesitter config
-- treesitter is the plugin that improves the syntax highlighting of the plugins you put in the 'ensure installed' list
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    ensure_installed = { 'lua', 'python', 'html', 'css', 'javascript', 'typescript', 'tsx', 'rust', 'markdown', 'markdown_inline' }
}

-- completion interface plugin config
local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
      ['<CR>'] = cmp.mapping.confirm({select = false})
  }),
})
