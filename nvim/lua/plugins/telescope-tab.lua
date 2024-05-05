return {
    {
        'LukasPietzschmann/telescope-tabs',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require('telescope').load_extension 'telescope-tabs'
            require('telescope-tabs').setup {
                -- custom setups
            }
            -- custom keybindings
            local map = require("helpers.keys").map
            map("n", "<leader><TAB>", "<cmd> Telescope telescope-tabs list_tabs<cr><esc>", "Toggle tab panel")
        end,
    },
}