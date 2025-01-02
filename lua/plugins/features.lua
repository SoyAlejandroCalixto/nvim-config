return {
    {
        "nvim-telescope/telescope.nvim",
        cond = not vim.g.vscode,
        tag = "0.1.8",
        config = function()
            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = { ".git", ".cache", "node_modules" }
                },
                pickers = { find_files = { hidden = true } },
            })
            vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<CR>')
            vim.keymap.set('n', '<leader>g', '<cmd>Telescope live_grep<CR>')
            vim.keymap.set('n', '<leader>c', '<cmd>Telescope git_commits<CR>')
            vim.keymap.set('n', '<leader>C', '<cmd>Telescope git_bcommits<CR>')
        end
    },
    {
        'IogaMaster/neocord',
        cond = not vim.g.vscode,
        event = "VeryLazy",
        config = function()
            require('neocord').setup({})
        end
    },
    {
      "supermaven-inc/supermaven-nvim",
        cond = not vim.g.vscode,
      config = function()
        require("supermaven-nvim").setup({ keymaps = { accept_suggestion = "<S-Tab>" } })
      end,
    },
    {
        "chrisgrieser/nvim-rip-substitute",
        cond = not vim.g.vscode,
        cmd = "RipSubstitute",
        opts = {},
        keys = {
            {
                "<leader>r",
                function() require("rip-substitute").sub() end,
                mode = { "n", "x" },
                desc = " rip substitute",
            },
        },
    },
}
