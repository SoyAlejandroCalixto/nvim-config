return {
    {
        "nvim-telescope/telescope.nvim",
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
            vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<CR>')
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
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" },
        },
        build = "make tiktoken", -- Only on MacOS or Linux
        config = function()
            require("CopilotChat").setup({
                window = {
                    layout = "float",
                    relative = "win",
                    width = 0.4,
                    height = 1,
                    col = 999,
                }
            })
            vim.api.nvim_set_keymap('i', '<S-tab>', 'copilot#Accept("<CR>")', { expr=true, noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>CopilotChatToggle<CR>', { noremap = true, silent = true })
            vim.g.copilot_no_tab_map = true
        end
    },
    {
        "chrisgrieser/nvim-rip-substitute",
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
