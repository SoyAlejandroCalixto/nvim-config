return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        event = 'VimEnter',
        opts = {
            defaults = {
                file_ignore_patterns = { '.git', '.cache', 'node_modules' }
            },
            pickers = { find_files = { hidden = true } },
        },
        keys = {
            { '<leader>f', '<cmd>Telescope find_files<CR>' },
            { '<leader>g', '<cmd>Telescope live_grep<CR>' },
            { '<leader>c', '<cmd>Telescope git_commits<CR>' },
            { '<leader>C', '<cmd>Telescope git_bcommits<CR>' },
            { '<leader>b', '<cmd>Telescope buffers<CR>' },
        }
    },
    {
        'IogaMaster/neocord',
        event = 'VeryLazy',
        config = function()
            require('neocord').setup({
                show_time = false
            })
        end
    },
    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            vim.g.copilot_enabled = false
            require("supermaven-nvim").setup({ keymaps = { accept_suggestion = "<S-tab>" } })
        end,
    },
    {
        'CopilotC-Nvim/CopilotChat.nvim',
        dependencies = {
            { 'github/copilot.vim' },
            { 'nvim-lua/plenary.nvim', branch = 'master' },
        },
        opts = {
            question_header = ' User ',
            answer_header = ' Copilot ',
            window = {
                layout = 'float',
                relative = 'win',
                width = 0.4,
                height = 1,
                col = 999,
            }
        },
        keys = {
            { '<leader>a', '<cmd>CopilotChatToggle<CR>' }
        },
        build = 'make tiktoken' -- Only on MacOS/Linux
    },
    {
        'chrisgrieser/nvim-rip-substitute',
        cmd = 'RipSubstitute',
        keys = {
            {
                '<leader>r',
                function() require('rip-substitute').sub() end,
                mode = { 'n', 'x' }
            },
        },
    },
    {
        'brianhuster/live-preview.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim'
        },
    }
}

