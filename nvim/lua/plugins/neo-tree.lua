-- Nicer filetree than NetRW
return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				-- custom set to global cwd
				filesystem = {
					bind_to_cwd = true,
					hijack_netrw_behavior = 'open_current',
					cwd_target = {
						sidebar = "tab",
						current = "window"
					}
				}
			})
			require("helpers.keys").map(
				{ "n", "v" },
				"<leader>e",
				"<cmd>NeoTreeRevealToggle<cr>",
				"Toggle file explorer"
			)
		end,
	},
}