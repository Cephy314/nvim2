return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
			javascript = { "biome", "biome-organize-imports" },
			typescript = { "biome", "biome-organize-imports" },
			tsx = { "biome", "biome-organize-imports" },
			json = { "biome", "biome-organize-imports" },
			css = { "biome", "biome-organize-imports" },
			scss = { "biome", "biome-organize-imports" },
		},
		setup = function()
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(agrs)
					require("conform").format({ bufnr = agrs.buf })
				end,
			})
		end,
	},
}
