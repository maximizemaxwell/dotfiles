require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Copilot Suggestion Acceptance Key
map("i", "<C-l>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept", noremap = true, silent = true })

map("v", "<C-q>", [[:s/^\s*\(\/\/\|#\|--\)\s\?//<CR>:noh<CR>]], {
  desc = "Uncomment //, #, or --",
  noremap = true,
  silent = true,
})
