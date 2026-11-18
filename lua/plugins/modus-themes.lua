return {
    "miikanissi/modus-themes.nvim",
    config = function()
        vim.cmd.colorscheme('modus')
        require("modus-themes").setup({
            transparent = true,
            dim_inactive = true
        })
    end
}
