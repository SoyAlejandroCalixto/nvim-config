require('neo-tree').setup({
    window = {
        width = 32,
        position = 'right'
    },
    default_component_configs = {
        git_status = { symbols = {
            added     = '',
            modified  = '',
            deleted   = '',
            renamed   = '',
            untracked = '',
            ignored   = '',
            unstaged  = '',
            staged    = '',
            conflict  = '',
        }},
        diagnostics = { symbols = {
            error = ' ',
            warn = ' ',
            info = ' ',
            hint = '󰌵',
        }},
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false
        }
    }
})

vim.keymap.set('n', '<leader>t', '<cmd>Neotree toggle<cr>')
