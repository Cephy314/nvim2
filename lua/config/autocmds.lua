-- autocmds.lua
-- Cephy314/nvim2

-- Filetype specific settings

-- set wrap  behavior for text a nd markdown files that will use common text.
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"markdown", "text"},
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
--  vim.opt_local.showbreak = "↳ "
    vim.opt_local.textwidth = 80
--  vim.opt_local.formatoptions:append("a")
    vim.opt_local.colorcolumn = nil
  end,
})
