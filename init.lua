vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({'n','v'}, '<Space>','<Nop>',{silent = true, remap = false })

require('config.lazy')
require('config.globals')
require('config.options')
--require('config.keymaps')
vim.cmd[[colorscheme tokyonight]]
require('config.keymap')
