local map = vim.keymap.set
local cmd = vim.cmd

-- Explorer
cmd('command! E Ex')
map('n', '<leader>e', function()
    cmd(':Explore')
end)

-- Terminal
map("t", "<Esc>", "<C-\\><C-n>")

map("n", "<leader>t", function()
    cmd(":leftabove vs term://zsh ")
    cmd(":vertical resize 50 ")
    cmd(":startinsert")
    vim.bo.filetype = 'terminal'
end)

-- Close terminal buffer
map("n", "<Esc>", function()
    if vim.bo.filetype == 'terminal' then
        cmd(':bd!')
    end
end)

-- Splits
map("n", "<leader>[", function()
    cmd(":leftabove vs")
end)

map("n", "<leader>]", function()
    cmd(":rightbelow vs")
end)

-- Buffers
map('n', '<leader>bd', function()
    cmd(':%bd|e#')
end)

map('n', '<leader>bo', function()
    cmd(':%bd|e#')
end)
