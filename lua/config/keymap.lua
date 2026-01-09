local m = require("utils").nmap
local map = require("utils").map

-- Friendly up down for working in wrapped text.
m('<down>', 'gj')
m('<up>', 'gk')

-- resize splits
m('<A-h>', require('smart-splits').resize_left)
m('<A-j>', require('smart-splits').resize_down)
m('<A-k>', require('smart-splits').resize_up)
m('<A-l>', require('smart-splits').resize_right)

-- move splits
m('<C-h>', require('smart-splits').move_cursor_left)
m('<C-j>', require('smart-splits').move_cursor_down)
m('<C-k>', require('smart-splits').move_cursor_up)
m('<C-l>', require('smart-splits').move_cursor_right)

-- Swap buffers between splits
m('<leader><leader>h', require('smart-splits').swap_buf_left)
m('<leader><leader>j', require('smart-splits').swap_buf_down)
m('<leader><leader>k', require('smart-splits').swap_buf_up)
m('<leader><leader>l', require('smart-splits').swap_buf_right)

-- Toggle wrap and line break
m('<leader>tw', "<cmd>set wrap!<cr>", {desc = "[T]oggle [W]rap"})

-- Map jk to escape in insert mode
map('i', 'jk', '<Esc>', {desc = "Map jk to escape in insert mode"})

-- Paste over currently selected text without yanking it
map("n", "<leader>p", [[m`0"_DP``]], {desc = "[p]aste without yank (Insert)"})
map("v", "<leader>p", [[m`"_dP``]], {desc = "[p]aste without yank (Visual)"})

-- Delete content without clobbering registers
map({"n","v"}, "<leader>d", [["_d]], {remap = false, desc = "[d]elete content without hurting registers"})

-- Save file with Ctrl-S in any mode.
map({ "i", "v", "n", "s" }, "<C-s>", function() vim.cmd([[w]]) end, { desc = "Save file" })

-- Code Action at cursor
map({"n","v"}, '<leader>.', function() require("tiny-code-action").code_action() end,
  {
    desc = "[.] Show code actions",
    buffer = true, noremap= true
  }
)
