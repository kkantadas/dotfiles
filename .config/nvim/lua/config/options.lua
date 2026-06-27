local set = vim.opt

-- Tabs / indentation
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

-- Search
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- Splits
set.splitbelow = true
set.splitright = true

-- Text display
set.wrap = true
set.linebreak = true
set.scrolloff = 5
set.cursorline = true

-- Line numbers
--set.number = true
--set.relativenumber = true

-- Encoding / colors
set.fileencoding = "utf-8"
set.termguicolors = true

-- Spell check
vim.opt.spell = false
vim.opt.spelllang = { "en_us", "de_de" }
vim.opt.spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"

-- Cursor
set.guicursor = "a:hor20-Cursor"

-- Files
set.backup = false
set.writebackup = false
set.swapfile = false
set.hidden = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

-- Clipboard
set.clipboard = "unnamedplus"
set.mouse = "a"

-- UI
set.cmdheight = 2
set.pumheight = 10
set.showmode = false
set.timeoutlen = 1000

-- Statusline
set.laststatus = 2

-- Netrw file explorer settings
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 25

-- Less noisy startup/messages
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.shm = vim.o.shm .. "I"

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})
