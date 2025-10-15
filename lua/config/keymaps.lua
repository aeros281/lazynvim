-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local del = vim.keymap.del

map("n", ";", "<cmd>Telescope buffers<cr>", { desc = "Telescope (buffers)" })
map("n", "~", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0))
end, { desc = "Open mini files" })
map("n", "<c-p>", "<cmd>Telescope git_files<cr>", { desc = "Ctrl + P open git files" })

-- Delete annoying move lines feature
del("i", "<A-j>")
del("i", "<A-k>")
del("v", "<A-j>")
del("v", "<A-k>")
del({ "i", "n", "s" }, "<esc>")
