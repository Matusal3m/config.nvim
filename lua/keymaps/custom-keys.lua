vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [[p""+Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>[", "<cmd>leftabove vs<CR>")
vim.keymap.set("n", "<leader>]", "<cmd>rightbelow vs<CR>")

vim.keymap.set('n', '<leader>bo', '<cmd>%bd|e#<CR>')

vim.keymap.set('n', '<leader>ds', vim.diagnostic.show)
vim.keymap.set('n', '<leader>dh', vim.diagnostic.hide)
vim.keymap.set('n', '<leader>dl', function()
    local new_config = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ virtual_lines = new_config, virtual_text = not new_config })
end)
