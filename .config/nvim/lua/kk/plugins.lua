local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth", "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

 -- Install your plugins here

return packer.startup(function(use) 
 -- My plugins here
use "wbthomason/packer.nvim"  -- Have packer manage itself
use "nvim-lua/plenary.nvim"   -- Useful lua functions 
use 'EdenEast/nightfox.nvim'    
use "kyazdani42/nvim-web-devicons"
use "kyazdani42/nvim-tree.lua"
use "folke/tokyonight.nvim"  -- colortheme
use "ellisonleao/gruvbox.nvim"  
use "folke/zen-mode.nvim"
use "vimwiki/vimwiki" 
use "bolt12/AbbrevMan.nvim"
use 'Mofiqul/dracula.nvim'
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use({
  "neanias/everforest-nvim",
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup()
  end,
})

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "nvim-telescope/telescope-media-files.nvim"

 -- Automatically set up your configuration after cloning packer.nvim
 -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)

-- Lua
