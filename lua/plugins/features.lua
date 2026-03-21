return {
  { 'nvim-lua/plenary.nvim' },
  { 'brianhuster/live-preview.nvim' },
  {
    'nvim-telescope/telescope.nvim',
    dependences = {
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    event = 'VimEnter',
    opts = {
      defaults = { file_ignore_patterns = {
        '.git',
        '.cache',
        'node_modules'
      }},
      pickers = { find_files = { hidden = true } },
    },
    keys = {
      { '<leader>f', '<cmd>Telescope find_files<CR>' },
      { '<leader>g', '<cmd>Telescope live_grep<CR>' },
      { '<leader>c', '<cmd>Telescope git_commits<CR>' },
      { '<leader>C', '<cmd>Telescope git_bcommits<CR>' },
      { '<leader>b', '<cmd>Telescope buffers<CR>' },
      { 'gd', '<cmd>Telescope lsp_definitions<CR>' },
    }
  },
  {
    'IogaMaster/neocord',
    opts = { show_time = false }
  },
  {
    'chrisgrieser/nvim-rip-substitute',
    cmd = 'RipSubstitute',
    keys = {{
      '<leader>r',
      function() require('rip-substitute').sub() end,
      mode = { 'n', 'x' }
    }},
  },
  {
    'zbirenbaum/copilot.lua',
    event = 'InsertEnter',
    build = ':Copilot auth',
    opts = { suggestion = { auto_trigger = true } },
    dependences = { 'copilotlsp-nvim/copilot-lsp' }
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    build = "make tiktoken",
    opts = { window = {
      width = 0.35
    }},
    keys = { { '<leader>a', '<cmd>CopilotChatToggle<CR>' } }
  },
}
