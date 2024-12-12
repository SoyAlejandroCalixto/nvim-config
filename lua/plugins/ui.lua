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
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {{ 'filename', symbols = { modified = '' } }},
                    lualine_x = {'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
            })
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window
        },
        keys = {
            { "<leader>t", "<cmd>Neotree toggle<cr>" },
            { "<leader>b", "<cmd>Neotree buffers toggle<cr>" },
        },
        config = function()
            vim.fn.sign_define("DiagnosticSignError", {text = " ", texthl = "DiagnosticSignError"})
            vim.fn.sign_define("DiagnosticSignWarn", {text = " ", texthl = "DiagnosticSignWarn"})
            vim.fn.sign_define("DiagnosticSignInfo", {text = " ", texthl = "DiagnosticSignInfo"})
            vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})

            require("neo-tree").setup({
                window = {
                    width = 32
                },
                default_component_configs = {
                    git_status = { symbols = {
                        added     = "", modified  = "", deleted   = "",
                        renamed   = "", untracked = "", ignored   = "",
                        unstaged  = "", staged    = "", conflict  = "",
                    }},
                    diagnostics = { symbols = {
                        error = " ",
                        warn = " ",
                        info = " ",
                        hint = "󰌵",
                    }},
                }
            })
        end
    },
    {
        'HiPhish/rainbow-delimiters.nvim'
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
      'nvimdev/dashboard-nvim',
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
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            { "<leader>d", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>" },
        },
    },
    {
        "nvim-tree/nvim-web-devicons"
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    }
}
