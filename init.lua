-- Misc options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.fillchars = { eob = ' ' }
vim.g.mapleader = ' '
vim.opt.signcolumn = 'yes'
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true

-- Indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.cmd('filetype plugin indent on')

vim.api.nvim_create_autocmd('FileType', {
    pattern = {'javascript', 'typescript', 'javascriptreact', 'typescriptreact'},
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

-- Keymaps
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<C-q>', '<cmd>bd!<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('i', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('t', '<C-x>', [[<C-\><C-n>]])
vim.keymap.set('n', '=', 'gg=G')
vim.keymap.set('v', 'p', '"_dP')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'dD', '"_dd')

-- Diagnostic icons
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '󰌵',
        },
    },
})

-- Imports
require('config.lazy')
require('config.langsupport')
require('config.lualine')
require('config.tree')
require('config.noice')
require('config.dashboard')

