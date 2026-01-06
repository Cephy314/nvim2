return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = {"nvim-tree/nvim-web-devicons"},
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    preset = "helix",
    triggers = {
      { "<auto>", mode = "nixsotc" },
      { "a", mode = {"n","v"} },
    },
    plugins = {
      marks = true,
      registers = true,
      spelling = { enabled = true, suggestions = 20, },
      presets = {
        operators = true,
        motions = true,
        text_objects = true,
        windows = true,
        nav = true,
        z = true,
        g = true,
      },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
