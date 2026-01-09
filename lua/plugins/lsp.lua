return {
  {
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
  },
  -- {
  --   "nvimtools/none-ls.nvim",
  --   dependencies = {
  --     "mason.nvim", "davidmh/cspell.nvim"
  --   },
  --   event = {"BufReadPre", "BufNewFile" },
  --   keys = {
  --     { "<leader>cn", "<cmd>NullLsInfo<cr>", desc = "NullLs Info" }
  --   },
  --   opts = function()
  --     local cspell = require("cspell")
  --     local ok, none_ls = pcall(require, "null-ls")
  --     if not ok then
  --       return
  --     end
  --
  --     local b = none_ls.builtins
  --
  --     local sources = {
  --       -- spell check
  --       b.diagnostics.codespell,
  --       b.diagnostics.misspell,
  --       -- cspell
  --       cspell.diagnostics.with({
  --         -- Set the severity to HINT for unknown words
  --         diagnostics_postprocess = function(diagnostic)
  --           diagnostic.severity = vim.diagnostic.severity["HINT"]
  --         end,
  --       }),
  --       cspell.code_actions,
  --     }
  --     -- Define debounce value
  --     local debounce_value = 200
  --     return {
  --       sources = sources,
  --       debounce = debounce_value,
  --       debug = true
  --     }
  --   end,
  -- },
}
