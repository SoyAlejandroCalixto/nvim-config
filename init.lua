-- misc options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.fillchars = { eob = " " }
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.clipboard = 'unnamedplus'
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true

-- keymaps
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<C-q>', '<cmd>bd!<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('i', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('t', '<C-x>', [[<C-\><C-n>]])

-- indent
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.cmd('filetype plugin indent on')

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"javascript", "typescript", 'javascriptreact', 'typescriptreact'},
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

-- diagnostic icons
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '', -- or other icon of your choice here, this is just what my config has:
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '󰌵',
        },
    },
})

-- imports
require("config.lazy")
require("config.languagesupport")
require("config.lualine")
require("config.tree")
require("config.dashboard")
