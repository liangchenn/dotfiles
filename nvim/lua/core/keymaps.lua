local map = require("helpers.keys").map

--
--			Keymapping
--

-- exit insert mode
map('i', 'jj', '<esc>')

-- document operations
map('i', 'js', '<cmd>update<cr>', "Save document")

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Clear after search
map("n", "<leader>ur", "<cmd>nohl<cr>", "Clear highlights")

-- Deleting buffers
local buffers = require("helpers.buffers")
map("n", "<leader>db", buffers.delete_this, "Current buffer")
map("n", "<leader>do", buffers.delete_others, "Other buffers")
map("n", "<leader>da", buffers.delete_all, "All buffers")


-- vim.keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true})
-- vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>f', ':Neotree<CR>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-s>', ':update<CR>', { noremap = true, silent = true })
-- vim.keymap.set('i', '<C-s>', '<ESC>:update<CR>', { noremap = true, silent = true })
-- vim.keymap.set({'i', 'c'}, '<C-y>', '<A-.>', { noremap = true, silent = true})
-- vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true})
-- vim.keymap.set('t', 'jj', '<C-\\><C-n>', { noremap = true, silent = true})

