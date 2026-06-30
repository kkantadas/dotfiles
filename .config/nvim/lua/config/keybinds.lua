vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>cd", vim.cmd.Ex, { desc = "Open netrw" })
keymap("n", "<leader>..", vim.cmd.Rex, { desc = "Return netrw" })

-- Open small terminal and jump directly to prompt
keymap("n", "<leader>t", function()
  vim.cmd("botright split")
  vim.cmd("resize 12")
  vim.cmd("terminal")

  vim.schedule(function()
    vim.cmd("startinsert")
  end)
end, { desc = "Open terminal" })

-- Open large terminal and jump directly to prompt
keymap("n", "<leader>T", function()
  vim.cmd("botright split")
  vim.cmd("resize 20")
  vim.cmd("terminal")

  vim.schedule(function()
    vim.cmd("startinsert")
  end)
end, { desc = "Open large terminal" })

-- Safer way to leave terminal mode
keymap("t", "<C-x>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

local keymap = vim.keymap.set

keymap("n", "<leader>sc", "<cmd>setlocal spell!<CR>", { desc = "Toggle spell check" })
keymap("n", "<leader>sn", "]s", { desc = "Next spelling mistake" })
keymap("n", "<leader>sp", "[s", { desc = "Previous spelling mistake" })
keymap("n", "<leader>ss", "z=", { desc = "Spell suggestions" })
keymap("n", "<leader>sf", "1z=", { desc = "Use first spell suggestion" })
keymap("n", "<leader>sa", "zg", { desc = "Add word to dictionary" })
keymap("x", "p", [["_dP]], { desc = "Paste over selection without losing yanked text" })
keymap({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })
