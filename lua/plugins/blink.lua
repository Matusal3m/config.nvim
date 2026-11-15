return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    tag = 'v1.*',

    config = function()
        require('blink.cmp').setup({
            keymap = {
                preset = 'enter',
                ['<CR>'] = { 'select_and_accept', 'fallback' },
                ['<Tab>'] = { 'select_and_accept', 'fallback' },
            },

            appearance = {
                nerd_font_variant = 'mono'
            },

            completion = {
                documentation = { auto_show = true },
                list = {
                    selection = {
                        preselect = false,
                    },
                },
            },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            fuzzy = {
                implementation = "prefer_rust_with_warning"
            }
        })
    end
}
