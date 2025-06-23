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

map("v", "<C-q>", [[:s/^\(\s*\)\(\/\/\|#\|--\)\s\?/\1/<CR>:noh<CR>]], {
  desc = "Uncomment //, #, or -- (preserve indent)",
  noremap = true,
  silent = true,
})

-- 줄 앞에 '//' 추가
vim.keymap.set("v", "<C-/>", [[:s/^\(\s*\)/\1\/\/ /<CR>:noh<CR>]], {
  desc = "Add // comment",
  noremap = true,
  silent = true,
})

-- 줄 앞에 '#' 추가
vim.keymap.set("v", "<C-#>", [[:s/^\(\s*\)/\1# /<CR>:noh<CR>]], {
  desc = "Add # comment",
  noremap = true,
  silent = true,
})

-- 줄 앞에 '--' 추가
vim.keymap.set("v", "<C-->", [[:s/^\(\s*\)/\1-- /<CR>:noh<CR>]], {
  desc = "Add -- comment",
  noremap = true,
  silent = true,
})
