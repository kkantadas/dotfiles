-- Enable spell check for writing files
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "markdown",
    "text",
    "org",
    "gitcommit",
    "mail",
  },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "en_us", "de_de" }
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})
