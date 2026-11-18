return {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "nvim-tree/nvim-web-devicons" },

    run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install",

    config = function()
        local builtin = require('telescope.builtin')

        require('telescope').setup {
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                }
            }
        }

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })
    end
}
