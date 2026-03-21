-- VANILLA NEOVIM CONF --

-- Misc
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
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.cmd('filetype plugin indent on')

vim.api.nvim_create_autocmd('FileType', {
    pattern = {'python'},
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
    end,
})

-- Binds
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<C-q>', '<cmd>bd!<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('i', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('t', '<C-x>', [[<C-\><C-n>]])

-- IMPORTS --
require("config.lazy")
require("config.dashboard")
require("config.lualine")
require("config.neotree")
require("config.noice")
