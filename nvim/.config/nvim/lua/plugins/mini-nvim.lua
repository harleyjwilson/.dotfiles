return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		-- set use_icons to true if you have a Nerd Font
		statusline.setup({ use_icons = vim.g.have_nerd_font })

		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we set the section for
		-- cursor location to LINE:COLUMN
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
		-- ... and there is more!
		--  Check out: https://github.com/echasnovski/mini.nvim
		local starter = require("mini.starter")
		local telescope = require("telescope.builtin")
		starter.setup({
			autoopen = true,
			items = {
				{ name = "Create file", action = "ene | startinsert", section = "New File" },
				{ name = "File search", action = telescope.find_files, section = "Telescope" },
				{ name = "Recent files", action = telescope.oldfiles, section = "Telescope" },
				{ name = "Text search", action = telescope.live_grep, section = "Telescope" },
				{
					name = "Neovim config",
					action = function()
						telescope.find_files({ cwd = vim.fn.stdpath("config") })
					end,
					section = "Config",
				},
				{ name = "Lazy", action = "Lazy", section = "Config" },
				{ name = "Quit", action = "qa", section = "Quit" },
			},
			header = "",
			footer = "",
		})
	end,
}
