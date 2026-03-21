return {
  { 'nvim-tree/nvim-web-devicons' },
  { 'MunifTanjim/nui.nvim' },
  { 'lewis6991/gitsigns.nvim' },
  { 'HiPhish/rainbow-delimiters.nvim' },
  { 'folke/noice.nvim' }, -- cfg -> config/noice.lua,
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({ flavour = "macchiato" })
      vim.cmd.colorscheme "catppuccin-nvim"
    end
  },
  {
    'nvim-lualine/lualine.nvim', -- cfg -> config/lualine.lua
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'romgrk/barbar.nvim',
    init = function() vim.g.barbar_auto_setup = false end,
    version = '^1.0.0',
    event = 'BufWinEnter',
    opts = { maximum_padding = 1 },
    keys = {
      { '<tab>', '<cmd>BufferNext<CR>' },
      { '<S-tab>', '<cmd>BufferPrevious<CR>' }
    }
  },
  {
    'nvim-neo-tree/neo-tree.nvim', -- cfg -> config/neotree.lua
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim'
    }
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {{
      '<leader>?',
      function() require('which-key').show({ global = false }) end,
      desc = 'Buffer Local Keymaps (which-key)',
    }},
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
        exclude = { filetypes = { 'dashboard' } },
        indent = { char = '│' },
        scope = {
          show_start = false,
          show_end = false
        },
    },
  },
  {
    'rcarriga/nvim-notify',
    opts = {
      timeout = 2000,
      render = 'compact',
      stages = 'fade',
      top_down = false,
    }
  },
  {
    'nvimdev/dashboard-nvim', -- cfg -> config/dashboard.lua
    event = 'VimEnter',
  },
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {{
      '<leader>d',
      '<cmd>Trouble diagnostics toggle filter.buf=0<CR>'
    }},
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
  },
}
