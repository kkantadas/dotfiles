vim.o.laststatus = 2
vim.o.showmode = false

vim.api.nvim_set_hl(0, "StatusMode", {
  fg = "#dcd7ba",
  bg = "#2a2a2a",
  bold = true,
})

vim.api.nvim_set_hl(0, "StatusFile", {
  fg = "#c8c093",
  bg = "#1f1f1f",
})

vim.api.nvim_set_hl(0, "StatusInfo", {
  fg = "#9cabca",
  bg = "#2a2a2a",
})

vim.api.nvim_set_hl(0, "StatusLine", {
  fg = "#c0caf5",
  bg = "#1a1a1a",
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
  fg = "#6c7086",
  bg = "#151515",
})

function _G.StatuslineMode()
  local mode = vim.fn.mode()

  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
    ["\22"] = "V-BLOCK",
    c = "COMMAND",
    R = "REPLACE",
    t = "TERMINAL",
  }

  return modes[mode] or mode
end

vim.o.statusline = table.concat({
  "%#StatusMode#",
  " %{v:lua.StatuslineMode()} ",
  "%#StatusFile#",
  " %f",
  " %m",
  " %r",
  "%=",
  "%#StatusInfo#",
  " %y ",
  " %{&fileencoding?&fileencoding:&encoding} ",
  " %l:%c ",
  " %p%% ",
})
