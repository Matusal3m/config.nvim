local map = vim.keymap.set
local cmd = vim.cmd

map('n', '<leader>gf', function()
    cmd(':GrugFar')
end)

map('v', '<leader>gf', function()
    cmd(':GrugFarWithin')
end)
