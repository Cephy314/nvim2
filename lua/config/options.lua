-- options.lua
-- Cephy314/nvim2

-- :NOTE Helpers
local g = vim.g
local o = vim.opt

-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1


o.clipboard 	 = "unnamed,unnamedplus"	-- Copy-paste between vim and everything else
o.cmdheight	 = 0				-- Give more space for displaying messages
o.colorcolumn    = "100"				-- Line length marker at 100 columns
o.completeopt	 = "menu,menuone,preview"	-- Better autocompletion
o.cursorline	 = true				-- Highligh cursor line
o.emoji		 = false				-- Fix emoji display
o.expandtab	 = true				-- Use space instead of tabs
o.foldcolumn	 = "0"
o.foldnestmax	 = 0				
o.foldlevel	 = 99				-- Using ufo provider need a large value
o.foldlevelstart = 99				-- Expand all folds by default
o.ignorecase	 = true				-- Needed for smartcase
o.laststatus = 3	-- global status line
o.linebreak = true -- wrap lines at convenient points
o.mouse = "a" -- enable mouse mode
o.number = true -- show line numbers
o.pumheight = 10 -- max number of completions in menu
o.relativenumber = true	-- enable relative line numbers
o.scrolloff = 8 -- Always keep space when scrolling to bottom/top
o.shiftwidth = 2 -- Default number of spaces used for indents
o.showtabline = 2 -- always show tabline
o.signcolumn = "yes:2" -- add extra sign column next to line number
o.smartcase = true -- use case in search
o.smartindent = true -- try to smart indent
o.smarttab = true
o.softtabstop = 2
o.splitright = true
o.swapfile = false
o.tabstop = 2
o.termguicolors = true
o.timeoutlen = 200 -- Faster completion
o.undofile = true
o.updatetime = 100
o.viminfo = "'1000"	-- increase the size of file history
o.wildignore = "*node_modules/**" -- ignore node modules in search
o.wrap = false -- dont wrap lines
o.writebackup = false -- dont backup on write.

-- Neovim defaults
o.autoindent = true -- good auto indent
o.backspace = "indent,eol,start" -- better backspace behavior
o.backup = false
-- Concaled tezt is completely hidden unless it hs a custom replacement character defined
o.conceallevel = 2
o.concealcursor = ""
o.encoding = "utf-8"
o.errorbells = false
-- o.fileencoding = "utf-8"
o.incsearch = true
o.showmode = false
