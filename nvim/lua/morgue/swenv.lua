return {
    {
        "AckslD/swenv.nvim",
        ft = "python",
        opts = {},
        config = function()
            -- custom key mapping
            local map = require("helpers.keys").map
            map('n', '<leader>vp', '<cmd>lua require("swenv.api").pick_venv()<cr>', 'Pick venv')
        end
    }
}