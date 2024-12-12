return {
    {
        'navarasu/onedark.nvim',
        config = function()
            require('onedark').setup({
                style = 'darker'
            })
            vim.cmd('colorscheme onedark')
        end
    },
    {
        'nvim-lualine/lualine.nvim', -- config in lua/config/lualine.lua
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        "nvim-neo-tree/neo-tree.nvim", -- config in lua/config/tree.lua
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window
        }
    },
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {
      },
      keys = {
        {
          "<leader>?",
          function()
            require("which-key").show({ global = false })
          end,
          desc = "Buffer Local Keymaps (which-key)",
        },
      },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
        config = function()
            require("ibl").setup({
                exclude = { filetypes = {
                    'dashboard'
                }},
                indent = { char = '│' },
                scope = { show_start = false, show_end = false },
            })
        end
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
        },
        dependencies = {
          "MunifTanjim/nui.nvim",
          "rcarriga/nvim-notify"
        },
        config = function()
            require("noice").setup({
                routes = {
                  { filter = { event = "msg_show", find = "línea más" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "líneas más" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "línea menos" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "líneas menos" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "fewer lines" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "cambio;" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "cambios;" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "Este es el cambio más" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "lines yanked" }, opts = { skip = true }, },
                  { filter = { event = "msg_show", find = "escritos" }, opts = { skip = true }, },
                  { filter = { error = true, find = "server cancelled the request" }, opts = { skip = true }, },
                },
            })
        end
    },
    {
      'nvimdev/dashboard-nvim', -- config in lua/config/dashboard.lua
      event = 'VimEnter',
      dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            timeout = 3000,
            render = "compact",
            stages = "fade",
            top_down = false,
        }
    },
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        keys = {
            { "<leader>d", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>" },
        },
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    },
    {
        "voldikss/vim-floaterm",
        config = function()
            vim.keymap.set('t', '<C-q>', '<cmd>FloatermToggle<CR>')
            vim.keymap.set('n', '<leader>s', '<cmd>FloatermToggle<CR>')
            vim.g.floaterm_width = 0.8
            vim.g.floaterm_height = 0.8
        end
    },
    { 'HiPhish/rainbow-delimiters.nvim' },
    { "nvim-tree/nvim-web-devicons" },
}
