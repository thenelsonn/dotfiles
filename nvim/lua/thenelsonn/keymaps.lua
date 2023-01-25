local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--
-- Navigation
keymap("n", "<Space>h", "<C-w>h", opts)
keymap("n", "<Space>j", "<C-w>j", opts)
keymap("n", "<Space>k", "<C-w>k", opts)
keymap("n", "<Space>l", "<C-w>l", opts)

--
-- Window split
keymap("n", "ss", "<Cmd>split<Cr>", opts)
keymap("n", "sv", "<Cmd>vsplit<Cr>", opts)

keymap("n", "<Space>e", "<Cmd>NvimTreeOpen<Cr>", opts)
