return {
    {
        'akinsho/toggleterm.nvim', version = "*",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<leader>\]],
                size = 20,
                direction = 'float',
                close_on_exit = true,
                shade_terminals = true,
            })
        end,
    }
}
