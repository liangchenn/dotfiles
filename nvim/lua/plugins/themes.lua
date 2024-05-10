return {
    -- Catpuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = {    -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false, -- disables setting the background color.
                show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
                term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false,            -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15,          -- percentage of the shade to apply to the inactive window
                },
                no_italic = false,              -- Force no italic
                no_bold = false,                -- Force no bold
                no_underline = false,           -- Force no underline
                styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" },    -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })
        end
    },
    -- Onedark
    {
        "navarasu/onedark.nvim",
        lazy = false,
        opts = {},
        config = function()
            require('onedark').setup {
                -- Main options --
                style = 'darker',             -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
                transparent = true,          -- Show/hide background
                term_colors = true,           -- Change terminal color as per the selected theme style
                ending_tildes = false,        -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

                -- toggle theme style ---
                toggle_style_key = "<leader>th",                          -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
                toggle_style_list = { 'dark', 'darker', 'deep', 'warmer' }, -- List of styles to toggle between
                -- toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},

                -- Change code style ---
                -- Options are italic, bold, underline, none
                -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
                code_style = {
                    comments = 'italic',
                    keywords = 'none',
                    functions = 'none',
                    strings = 'none',
                    variables = 'none'
                },

                -- Lualine options --
                lualine = {
                    transparent = false, -- lualine center bar transparency
                },

                -- Custom Highlights --
                colors = {},     -- Override default colors
                highlights = {}, -- Override highlight groups

                -- Plugins Config --
                diagnostics = {
                    darker = true,     -- darker colors for diagnostic
                    undercurl = true,  -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            }
        end
    },
    -- TokyoNight
    {
        "folke/tokyonight.nvim", lazy = false, opts = {}
    },
    -- Dracula
    {
        'maxmx03/dracula.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
          ---@type dracula
          local dracula = require "dracula"

          dracula.setup({
          transparent = false,
          on_colors = function (colors, color)
            ---@type dracula.palette
            return {
              -- override or create new colors
              mycolor = "#ffffff",
            }
          end,
          on_highlights = function (colors, color)
            ---@type dracula.highlights
            return {
              ---@type vim.api.keyset.highlight
              Normal = { fg = colors.mycolor }
            }
          end,
          plugins = {
            ["nvim-treesitter"] = true,
            ["nvim-lspconfig"] = true,
            ["nvim-navic"] = true,
            ["nvim-cmp"] = true,
            ["indent-blankline.nvim"] = true,
            ["neo-tree.nvim"] = true,
            ["nvim-tree.lua"] = true,
            ["which-key.nvim"] = true,
            ["dashboard-nvim"] = true,
            ["gitsigns.nvim"] = true,
            ["neogit"] = true,
            ["todo-comments.nvim"] = true,
            ["lazy.nvim"] = true,
            ["telescope.nvim"] = true,
            ["noice.nvim"] = true,
            ["hop.nvim"] = true,
            ["mini.statusline"] = true,
            ["mini.tabline"] = true,
            ["mini.starter"] = true,
            ["mini.cursorword"] = true,
          }
          })
        --   vim.cmd.colorscheme 'dracula'
        --   vim.cmd.colorscheme 'dracula-soft'
        end
      },
      {
        'nvim-lualine/lualine.nvim',
        opts = {
          options = {
            theme = vim.g.colors_name,
            refresh = {
              statusline = 1000,
            },
          },
      },
    },
    -- Rose Pine
    { 
        "rose-pine/neovim", name = "rose-pine",
        config = function ()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,
				transparent = false,
			
				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},
			
				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},
			
				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",
			
					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",
			
					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",
			
					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},
			
				highlight_groups = {
					-- Comment = { fg = "foam" },
					-- VertSplit = { fg = "muted", bg = "muted" },
				},
			
				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
					--
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end,
			})
        end
    }
}

