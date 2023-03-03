-- map leader is set in julian.init.lua before lazy configuration

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

vim.api.nvim_command('let R_assign = 0')
