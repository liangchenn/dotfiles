local map = require("helpers.keys").map

--
--			Keymapping
--

-- exit insert mode
map('i', 'jj', '<esc>')

-- document operations
-- map('i', 'js', '<cmd>update<cr><esc>', "Save document")

-- Resize with arrows
map("n", "<M-Up>", ":resize -2<CR>")
map("n", "<M-Down>", ":resize +2<CR>")
map("n", "<M-S-Left>", ":vertical resize -2<CR>")
map("n", "<M-S-Right>", ":vertical resize +2<CR>")

-- Clear after search
map("n", "<leader>ur", "<cmd>nohl<cr>", "Clear highlights")

-- Deleting buffers
local buffers = require("helpers.buffers")
map("n", "<leader>db", buffers.delete_this, "Delete Current buffer")
map("n", "<leader>do", buffers.delete_others, "Delete Other buffers")
map("n", "<leader>da", buffers.delete_all, "Delete All buffers")

-- quit
map("n", "<leader>qq", "<cmd>q<cr>", "quit current window")

