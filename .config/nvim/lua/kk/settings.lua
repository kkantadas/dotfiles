local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = true
set.scrolloff = 5
set.fileencoding = 'utf-8'
--set.termguicolors = true

--set.relativenumber = true
set.cursorline = true

set.hidden = true
set.guicursor = 'a:hor20-Cursor'
set.laststatus = 0  

set.linebreak = true
--set.number = true

set.backup = false
set.clipboard = "unnamedplus"
set.cmdheight = 2
set.hlsearch = true
set.ignorecase = true
set.pumheight = 10
set.showmode = false
set.swapfile = false
set.timeoutlen = 100
set.writebackup = false
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
-- set.guifont = "monospace:h17"

vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.shm = vim.o.shm .. "I"
-- vim.cmd "set background=dark"
-- vim.cmd "set syntax=on"
vim.cmd "set whichwrap+=<,>,[,],h,l" -- vim.cmd - old vim way
vim.cmd [[set iskeyword+=-]]
--vim.api.nvim_set_option("clipboard","unnamed")
