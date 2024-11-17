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
        "vim-airline/vim-airline",
        config = function()
            vim.g.airline_section_y = ''
            vim.g.airline_section_z = '%l:%c'
            vim.g.airline_theme = 'onedark'
        end
    },
    {
        "vim-airline/vim-airline-themes"
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
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
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
        event = "User FilePost",
    },
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {
        -- add any options here
      },
      dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- "rcarriga/nvim-notify",
        }
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
