return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
  opts = {
    format = {
      timeout_ms = 2000,
      async = false,
      quiet = false,
    },
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
      local formatting = require('plugins.configs.mason-lspconfig.formatting')
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
        group = formatting.group,
				callback = function(args)
					formatting.auto_format(args.buf)
				end,
			})
		end,
	},
}
