return { -- Harpoon quick file navigation
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			settings = {
				save_on_toggle = true,
			},
		})

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "[A]dd to Harpoon" })
		vim.keymap.set("n", "<leader>hd", "dd", { desc = "[D]elete from Harpoon" })
		vim.keymap.set("n", "<leader>hl", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "[L]ist Harpoon" })
	end,
}
