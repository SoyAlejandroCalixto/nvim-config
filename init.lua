vim.opt.number = true;
vim.opt.relativenumber = true;
vim.o.cursorlineopt = 'both'
vim.opt.wrap = false
vim.opt.fillchars = { eob = " " };
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.keymap.set('i', 'jk', '<Esc>')
vim.opt.clipboard = 'unnamedplus'
vim.opt.smartindent = true

require("config.lazy")
require("config.lsp")
require("config.dashboard")
