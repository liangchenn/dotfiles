return {
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup()
            -- custom keymaps
            local map = require("helpers.keys").map
            map("n", "-", "<cmd>Oil --float<cr>", "Open parent directory")
        end
    }
}