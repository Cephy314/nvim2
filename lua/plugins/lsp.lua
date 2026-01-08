local ensure = {
  -- {lang = "lua", opts={}},
  {lang = "biome",opts={}},
  {lang = "copilot",opts={}}, 
  {lang = "cspell",opts={}},
  {lang = "dockerls",opts={}},
  {lang = "gh_actions_ls",opts={}},
  {lang = "graphql",opts={}},
  {lang = "lua_ls",opts={
    settings = {
      Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim","require" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },},},
  {lang = "postgres_lsp",opts={}},
  {lang = "prismals",opts={}},
  {lang = "sqlls",opts={}},
  {lang = "stylua",opts={}},
  {lang = "tailwindcss",opts={}},
}

return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    {
      "mason-org/mason.nvim", 
      opts={}
    },
    {
      "neovim/nvim-lspconfig",
    },
    {
      "zbirenbaum/copilot.lua", 
      opts={
        suggestion = { enabled = false },
        panel = { enabled = false},
      },
    },
  },
  opts = {
    automatic_enable = true
  }
}
