local map = vim.keymap.set
local cmd = vim.cmd
local fn  = vim.fn

function _G.CheckBackspace()
    local col = fn.col('.') - 1
    return col == 0 or fn.getline('.'):sub(col, col):match("%s") ~= nil
end

-- Completion
map("i", "<Tab>", function()
    if fn["coc#pum#visible"]() == 1 then
        return fn
    elseif CheckBackspace() then
        return "<Tab>"
    else
        return fn["coc#refresh"]()
    end
end, { expr = true, silent = true })

map("i", "<S-Tab>", function()
    if fn["coc#pum#visible"]() == 1 then
        return fn
    else
        return "<C-h>"
    end
end, { expr = true, silent = true })

map("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : \"\\<CR>\"",
    { expr = true, silent = true, noremap = true })

map("i", "<C-Space>", "coc#refresh()", { expr = true, silent = true })

cmd [[command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument]]

-- Diagnostics
map("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
map("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })

-- GoTo
map("n", "gd", "<Plug>(coc-definition)", { silent = true })
map("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
map("n", "gi", "<Plug>(coc-implementation)", { silent = true })
map("n", "gr", "<Plug>(coc-references)", { silent = true })

-- Hover
map('n', 'K', function()
    if vim.tbl_contains({ 'vim', 'help' }, vim.bo.filetype) then
        cmd('help ' .. fn.expand('<cword>'))
    else
        fn.CocAction('doHover')
    end
end, { silent = true })

-- Rename
map('n', '<leader>rn', '<Plug>(coc-rename)')

-- Highlight
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        fn.CocActionAsync("highlight")
    end
})

-- Code actions
map("x", "<Leader>a",  "<Plug>(coc-codeaction-selected)")
map("n", "<Leader>a",  "<Plug>(coc-codeaction-selected)")
map("n", "<Leader>ac", "<Plug>(coc-codeaction-cursor)")
map("n", "<Leader>ca", "<Plug>(coc-codeaction)")
map("n", "<Leader>as", "<Plug>(coc-codeaction-source)")
map("n", "<Leader>qf", "<Plug>(coc-fix-current)")

-- CocList
map("n", "<space>a", ":<C-u>CocList diagnostics<CR>", { silent = true, nowait = true })
map("n", "<space>e", ":<C-u>CocList extensions<CR>", { silent = true, nowait = true })
map("n", "<space>o", ":<C-u>CocList outline<CR>",    { silent = true, nowait = true })
map("n", "<space>s", ":<C-u>CocList -I symbols<CR>", { silent = true, nowait = true })
map("n", "<space>j", ":<C-u>CocNext<CR>",            { silent = true, nowait = true })
map("n", "<space>k", ":<C-u>CocPrev<CR>",            { silent = true, nowait = true })
map("n", "<space>p", ":<C-u>CocListResume<CR>",      { silent = true, nowait = true })

