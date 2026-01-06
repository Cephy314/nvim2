-- treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require 'nvim-treesitter'
    local parsers = {
      "bash",
      "comment",
      "css",
      "diff",
      "dockerfile",
      "elixir",
      "git_config",
      "gitcommit",
      "gitignore",
      "groovy",
      "go",
      "heex",
      "hcl",
      "html",
      "http",
      "java",
      "javascript",
      "jsdoc",
      "json",
      "json5",
      "jsonc",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      "python",
      "regex",
      "rst",
      "rust",
      "scss",
      "ssh_config",
      "sql",
      "terraform",
      "typst",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    }

    ts.install(parsers)

    vim.treesitter.language.register("groovy","Jenkinsfile")
    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo[0][0].foldmethod = 'expr'
    vim.api.nvim_command("set nofoldenable")

    vim.api.nvim_create_autocmd('FileType', {
      pattern = parsers,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
