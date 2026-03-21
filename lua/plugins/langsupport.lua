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
        ['<CR>'] = { 'accept', 'fallback' }
      }
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { 'lua_ls', 'ts_ls', 'pyright', 'bashls', 'jsonls', 'jdtls' }, -- LSPs to install
      automatic_installation = true
    }
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
  },
  { "mfussenegger/nvim-jdtls" } -- Java better support
}
