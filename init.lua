vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.fillchars = { eob = " " }
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.cmd('filetype plugin indent on')
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.keymap.set('i', 'jk', '<Esc>')
vim.opt.clipboard = 'unnamedplus'
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"javascript", "typescript", 'javascriptreact', 'typescriptreact'},
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

require("config.lazy")
require("config.languagesupport")
require("config.dashboard")
