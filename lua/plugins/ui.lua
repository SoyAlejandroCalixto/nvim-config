return {
    {
        'Mofiqul/dracula.nvim',
        config = function()
            vim.cmd('colorscheme dracula')
        end
    },
    {
        'nvim-lualine/lualine.nvim', -- Config -> lua/config/lualine.lua
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons'
        },
        init = function() vim.g.barbar_auto_setup = false end,
        version = '^1.0.0',
        event = 'BufWinEnter',
        opts = {
            maximum_padding = 1
        },
        keys = {
            { '<tab>', '<cmd>BufferNext<CR>' },
            { '<S-tab>', '<cmd>BufferPrevious<CR>' }
        }
    },
    {
        'nvim-neo-tree/neo-tree.nvim', -- Config -> lua/config/tree.lua
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim'
        }
    },
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        opts = {
        },
        keys = {
            {
                '<leader>?',
                function()
                    require('which-key').show({ global = false })
                end,
                desc = 'Buffer Local Keymaps (which-key)',
            },
        },
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {},
        config = function()
            require('ibl').setup({
                exclude = { filetypes = {
                    'dashboard'
                }},
                indent = { char = '│' },
                scope = {
                    show_start = false,
                    show_end = false
                },
            })
        end
    },
    {
        'folke/noice.nvim', -- Config in lua/config/noice.lua
        dependencies = {
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify'
        }
    },
    {
        'rcarriga/nvim-notify',
        opts = {
            timeout = 3000,
            render = 'compact',
            stages = 'fade',
            top_down = false,
        }
    },
    {
        'nvimdev/dashboard-nvim', -- Config in lua/config/dashboard.lua
        event = 'VimEnter',
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },
    {
        'folke/trouble.nvim',
        opts = {},
        cmd = 'Trouble',
        keys = {
            { '<leader>d', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>' },
        },
    },
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    },
    {
        'HiPhish/rainbow-delimiters.nvim',
    }
}
