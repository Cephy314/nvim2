local ensure = {
  "lua",
  "biome",
  "copilot",
  "cspell",
  "dockerls",
  "gh_actions_ls",
  "graphql",
  "lua_ls",
  "postgres_lsp",
  "prismals",
  "sqlls",
  "stylua",
  "tailwindcss",
}

return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {{"mason-org/mason.nvim", opts={}},"neovim/nvim-lspconfig",
  {
    "zbirenbaum/copilot.lua", 
    opts={
      suggestion = { enabled = false },
      panel = { enabled = false},
    },
  },},
  config = function()
    for _, server in ipairs(ensure) do
      vim.lsp.enable(server)
    end
  end,
}
