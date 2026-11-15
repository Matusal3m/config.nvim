vim.g.mapleader = " "

vim.opt.tabstop        = 4
vim.opt.softtabstop    = 4
vim.opt.shiftwidth     = 4
vim.opt.expandtab      = true

vim.opt.number         = true
vim.opt.relativenumber = true

vim.opt.foldmethod     = "indent"
vim.opt.foldlevelstart = 99

vim.opt.swapfile       = false
vim.opt.backup         = false
vim.opt.undodir        = os.getenv("HOME") .. "/.cache/nvim/undodir"
vim.opt.undofile       = true

vim.opt.incsearch      = true
vim.opt.isfname:append("@-@")

vim.opt.wrap           = false

vim.opt.termguicolors  = true

vim.opt.scrolloff      = 8
vim.opt.signcolumn     = "yes"

vim.opt.mouse          = "v"

vim.opt.updatetime     = 50

vim.diagnostic.config({
    virtual_text = true,
})
