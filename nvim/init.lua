-- encoding
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
-- indent
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.shiftwidth = 4
-- autoident
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- search insensitive
vim.o.ignorecase = true
vim.o.smartcase = true
-- highlight search
vim.o.hlsearch = true
-- line number
vim.wo.number = true
vim.wo.relativenumber = false
-- autoread
vim.o.autoread = true
vim.bo.autoread = true
-- wrap
vim.wo.wrap = true
vim.o.whichwrap = "<,>,[,]"
-- mouse
vim.o.mouse = "a"
-- backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- splitview
vim.o.splitbelow = true
vim.o.splitright = true
-- style
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- autocomplete
vim.o.pumheight = 10
vim.o.clipboard = "unnamedplus"
-- leader
--vim.g.mapleader = " "

--
--			Keymapping
--
vim.keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true})
vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f', ':Neotree<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-s>', ':update<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<ESC>:update<CR>', { noremap = true, silent = true })
vim.keymap.set({'i', 'c'}, '<C-y>', '<A-.>', { noremap = true, silent = true})

--
--      Lazy Nvim
--
require("lazynvim-init")

vim.cmd[[colorscheme tokyonight-storm]]
