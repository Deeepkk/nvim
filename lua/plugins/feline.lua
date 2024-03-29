return {
	-- Statusline
	"freddiehaddad/feline.nvim",
	config = function()
		local line_ok, feline = pcall(require, "feline")
		if not line_ok then
			return
		end

		local radium = {
			fg = "#abb2bf",
			bg = "#1e2024",
			green = "#37d99e",
			teal = "#63b3ad",
			purple = "#c397d8",
			orange = "#f0a988",
			blue = "#7ab0df",
			red = "#f87070",
			aqua = "#50cad2",
			darkblue = "#282c34",
			dark_red = "#e87979",
		}

		local vi_mode_colors = {
			NORMAL = "green",
			OP = "green",
			INSERT = "teal",
			VISUAL = "purple",
			LINES = "orange",
			BLOCK = "dark_red",
			REPLACE = "red",
			COMMAND = "aqua",
		}

		local c = {
			vim_mode = {
				provider = {
					name = "vi_mode",
					opts = {
						show_mode_name = true,
					},
				},
				hl = function()
					return {
						fg = require("feline.providers.vi_mode").get_mode_color(),
						bg = "darkblue",
						style = "bold",
						name = "NeovimModeHLColor",
					}
				end,
				left_sep = "block",
				right_sep = "block",
			},
			gitBranch = {
				provider = "git_branch",
				hl = {
					fg = "blue",
					bg = "darkblue",
					style = "bold",
				},
				left_sep = "block",
				right_sep = "block",
			},
			gitDiffAdded = {
				provider = "git_diff_added",
				hl = {
					fg = "green",
					bg = "darkblue",
				},
				left_sep = "block",
				right_sep = "block",
			},
			gitDiffRemoved = {
				provider = "git_diff_removed",
				hl = {
					fg = "red",
					bg = "darkblue",
				},
				left_sep = "block",
				right_sep = "block",
			},
			gitDiffChanged = {
				provider = "git_diff_changed",
				hl = {
					fg = "fg",
					bg = "darkblue",
				},
				left_sep = "block",
				right_sep = "block",
			},
			separator = {
				provider = "",
			},
			fileinfo = {
				provider = {
					name = "file_info",
					opts = {
						type = "relative-short",
					},
				},
				hl = {
					style = "bold",
				},
				left_sep = " ",
				right_sep = " ",
			},
			diagnostic_errors = {
				provider = "diagnostic_errors",
				hl = {
					fg = "red",
				},
			},
			diagnostic_warnings = {
				provider = "diagnostic_warnings",
				hl = {
					fg = "teal",
				},
			},
			diagnostic_hints = {
				provider = "diagnostic_hints",
				hl = {
					fg = "aqua",
				},
			},
			diagnostic_info = {
				provider = "diagnostic_info",
			},
			lsp_client_names = {
				provider = "lsp_client_names",
				hl = {
					fg = "purple",
					bg = "darkblue",
					style = "bold",
				},
				left_sep = "block",
				right_sep = "block",
			},
			file_type = {
				provider = {
					name = "file_type",
					opts = {
						filetype_icon = true,
						case = "titlecase",
					},
				},
				hl = {
					fg = "red",
					bg = "darkblue",
					style = "bold",
				},
				left_sep = "block",
				right_sep = "block",
			},
			file_encoding = {
				provider = "file_encoding",
				hl = {
					fg = "orange",
					bg = "darkblue",
					style = "italic",
				},
				left_sep = "block",
				right_sep = "block",
			},
			position = {
				provider = "position",
				hl = {
					fg = "green",
					bg = "darkblue",
					style = "bold",
				},
				left_sep = "block",
				right_sep = "block",
			},
			line_percentage = {
				provider = "line_percentage",
				hl = {
					fg = "aqua",
					bg = "darkblue",
					style = "bold",
				},
				left_sep = "block",
				right_sep = "block",
			},
			scroll_bar = {
				provider = "scroll_bar",
				hl = {
					fg = "teal",
					style = "bold",
				},
			},
		}

		local left = {
			c.vim_mode,
			c.fileinfo,
			c.diagnostic_errors,
			c.diagnostic_warnings,
			c.diagnostic_info,
			c.diagnostic_hints,
		}

		local middle = {
			c.gitBranch,
			c.gitDiffAdded,
			c.gitDiffRemoved,
			c.gitDiffChanged,
			c.separator,
		}

		local right = {
			c.lsp_client_names,
			c.file_type,
			c.position,
		}

		local components = {
			active = {
				left,
				middle,
				right,
			},
			inactive = {
				left,
				middle,
				right,
			},
		}

		feline.setup({
			components = components,
			theme = radium,
			vi_mode_colors = vi_mode_colors,
		})
	end,
}
