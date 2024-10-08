return {
	"craftzdog/solarized-osaka.nvim",
	priority = 1000,
	config = function()
		require("solarized-osaka").setup({
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "dark",
			},
		})

		vim.cmd([[colorscheme solarized-osaka]])
	end,
}
