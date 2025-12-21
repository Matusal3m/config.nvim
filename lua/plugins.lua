require("packer").startup(function(use)
    -- deps
    use 'nvim-lua/plenary.nvim'
    use 'MunifTanjim/nui.nvim'

    use "wbthomason/packer.nvim"

    -- use "Mofiqul/vscode.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }

    use { "neoclide/coc.nvim", branch = "release" }
    use { "mg979/vim-visual-multi", branch = "master" }
    use { "nvim-telescope/telescope.nvim" }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)

