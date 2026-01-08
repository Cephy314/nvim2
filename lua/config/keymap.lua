local m = require("utils").nmap
local map = require("utils").map

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

