return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            require'lspconfig'.pyright.setup{}
            require'lspconfig'.tsserver.setup{}
            require'lspconfig'.rust_analyzer.setup {
                -- Server-specific settings. See `:help lspconfig-setup`
                settings = {
                    ['rust-analyzer'] = {},
                },
            }
        end
    },
    {
        'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({})
        end
    }
}
