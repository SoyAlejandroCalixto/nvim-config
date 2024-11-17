return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        config = function()
            vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<CR>')
            vim.keymap.set('n', '<leader>g', '<cmd>Telescope live_grep<CR>')
            vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<CR>')
            vim.keymap.set('n', '<leader>c', '<cmd>Telescope git_commits<CR>')
            vim.keymap.set('n', '<leader>C', '<cmd>Telescope git_bcommits<CR>')
        end
    },
    {
        'IogaMaster/neocord',
        event = "VeryLazy",
        config = function()
            require('neocord').setup({})
        end
    },
    {
      "supermaven-inc/supermaven-nvim",
      config = function()
        require("supermaven-nvim").setup({ keymaps = { accept_suggestion = "<S-Tab>" } })
      end,
    }
}
