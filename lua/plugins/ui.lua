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
                    lualine_c = {'filename'},
                    lualine_x = {'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
            })
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({
                view = {
                  width = 38,
                }
            })
            vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
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
          "rcarriga/nvim-notify",
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
        "nvim-tree/nvim-web-devicons"
    }
}
