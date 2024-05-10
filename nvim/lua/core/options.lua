local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	wrap = false,
	termguicolors = true,
	number = true,
	relativenumber = false,
	autoindent = true,
	hlsearch = true,
	mouse = "a",
	splitbelow = true,
	splitright = true,
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

-- Set other options
vim.cmd.colorscheme("rose-pine")