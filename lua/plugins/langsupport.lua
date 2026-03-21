return {
  { "neovim/nvim-lspconfig" },
  { "rafamadriz/friendly-snippets" },
  {
    "mason-org/mason.nvim", -- Install LSPs
    opts = {}
  },
  {
    "saghen/blink.cmp", -- Autocompletion
    version = '1.*',
    opts = {
      keymap = {
        preset = 'default',
        ['<Enter>'] = { 'accept', 'fallback' }
      }
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 'lua_ls', 'ts_ls', 'pyright', 'bashls', 'jsonls', 'jdtls' }, -- LSPs to install
        automatic_installation = true
      })
      -- Settings for specific languages
      vim.lsp.config.jdtls = { cmd = { 'jdtls', "--jvm-arg=-javaagent:"..vim.fn.expand('~/.local/share/nvim/mason/packages/jdtls/lombok.jar') } }
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local langs = { 'lua', 'javascript', 'typescript', 'python', 'java', 'bash', 'json' }
      require('nvim-treesitter').install(langs)
      vim.api.nvim_create_autocmd('FileType', {
        pattern = langs,
        callback = function() vim.treesitter.start() end,
      })
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  }
}
