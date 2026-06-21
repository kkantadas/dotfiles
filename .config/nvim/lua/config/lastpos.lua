-- Jump to last cursor position when reopening a file
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local last_pos = vim.fn.line([['"]])
    local last_line = vim.fn.line("$")

    if last_pos > 0 and last_pos <= last_line then
      vim.cmd([[normal! g'"]])
    end
  end,
})
