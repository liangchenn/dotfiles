return {
    {
        "zaldih/themery.nvim",
        config = function()
            -- Minimal config
            require("themery").setup({
                -- Your list of installed colorschemes
                themes = {
                    "onedark",
                    "tokyonight-storm",
                    "tokyonight-night",
                    "catppuccin-frappe",
                    "catppuccin-macchiato",
                    "catppuccin-mocha",
                    "dracula",
                    "dracula-soft",
                    "rose-pine",
                    "rose-pine-moon",
                },
                themeConfigFile = "~/.local/share/nvim/themes.lua", -- Described below
                livePreview = true, -- Apply theme while browsing. Default to true.
            })
            -- custom keymaps
            local map = require("helpers.keys").map
            map("n", "<leader>tp", "<cmd>Themery<cr>", "Theme picker")
        end
    }
}