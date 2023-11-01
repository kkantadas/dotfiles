require('kk.settings')     -- point to the settings file in lua/kk
require('kk.keymaps')      -- call keybindings
require('kk.plugins')      -- packer pluginmanger config
require('kk.nvim-tree')
require("kk.telescope")
-- vim.cmd('colorscheme tokyonight')
require('kk.colortheme')  -- Colortheme
-- vim.cmd('colorscheme duskfox') ---""---
require('kk.treesitter')

   -- add transparent background 
  --   require("transparent").setup({
  --    enable = true, -- boolean: enable transparent
  --    extra_groups = { -- table/string: additional groups that should be clear
  --      -- In particular, when you set it to 'all', that means all avaliable groups
  --      -- example of akinsho/nvim-bufferline.lua
  --      "BufferLineTabClose",
  --      "BufferlineBufferSelected",
  --      "BufferLineFill",
  --      "BufferLineBackground",
  --      "BufferLineSeparator",
  --      "BufferLineIndicatorSelected",
  --    },
  --  
  --  -- vim.cmd -- execute *.vim skript
  --    exclude = {}, -- table: groups you don't want to clear
  --  })

vim.cmd("source ~/.config/nvim/lua/kk/lastposition.vim")
vim.cmd("command! ClearReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor")
vim.cmd("set spelllang=en,cjk")

-- cursor line by line
vim.cmd("nmap <silent> <Down> gj")
vim.cmd("nmap <silent> <Up> gk")

-- side border
 vim.cmd("set foldcolumn=1")
 vim.cmd("hi FoldColumn ctermbg=none guibg=none")
 vim.cmd("hi Folded ctermbg=none guibg=none")

 vim.cmd("set clipboard=")
