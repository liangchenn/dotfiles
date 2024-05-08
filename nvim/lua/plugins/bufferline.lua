return {
    {
        'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup({
                options = {
                    offsets = {{
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }},
                    show_buffer_icon = true,
                    buffer_close_icon = 'x',
                    modified_icon = '●',
                    close_icon = '',
                    left_trunc_marker = '',
                    right_trunc_marker = '',
                    separator_style = "padded_slant",
                    indicator = {
                        style = 'underline'
                    },
                    diagnostics = "nvim_lsp",
                    hover = {
                        enabled = true,
                        delay = 200,
                        reveal = {'close'}
                    },
                }
            })
        end
    }
}