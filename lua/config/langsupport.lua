-- More info at -> https://lsp-zero.netlify.app/docs/getting-started.html

-- When there is a language server active in the file
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

-- Mason plugin config -> Install lsp more easily by placing their names in 'ensure_installed'
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'bashls', 'pyright', 'html', 'cssls', 'tailwindcss', 'ts_ls', 'emmet_language_server', 'jsonls', 'omnisharp', 'rust_analyzer', 'astro' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
        lua_ls = function()
            require('lspconfig').lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' }
                        }
                    }
                }
            })
        end,
        jsonls = function()
            require('lspconfig').jsonls.setup({
                settings = {
                    json = {
                        schemas = require('schemastore').json.schemas(),
                        validate = { enable = true },
                    },
                },
            })
        end
    },
})

-- Treesitter plugin config -> improves the syntax highlighting of the languages you put in 'ensure installed'
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    },
    ensure_installed = { 'lua', 'bash', 'regex', 'python', 'html', 'css', 'javascript', 'typescript', 'tsx', 'c_sharp', 'rust', 'markdown', 'markdown_inline', 'astro' }
}

-- Nvim-lint plugin config -> Run linters on the filetypes you specify. Install linters in 'ensure_installed' and set the filetypes in 'linters_by_ft'
require('mason-nvim-lint').setup({
    ensure_installed = { 'eslint_d' },
    automatic_installation = true,
})

local lint = require('lint')
lint.linters_by_ft = {
    javascript = { 'eslint_d' }
}

-- Autocmd to execute the linter when saving or exiting the insert mode
vim.api.nvim_create_autocmd({ 'InsertLeave', 'BufWritePost' }, {
    callback = function()
        local lint_status, lint = pcall(require, 'lint')
        if lint_status then
            lint.try_lint(nil, { ignore_errors = true })
        end
    end,
})

-- Cmp config -> The UI autocompletion plugin
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
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true })
    }),
})

-- Add cmp_nvim_lsp plugin capabilities settings to lspconfig
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

