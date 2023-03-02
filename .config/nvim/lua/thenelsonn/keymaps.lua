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
keymap("n", "ss", "<cmd>split<CR>", opts)
keymap("n", "sv", "<cmd>vsplit<CR>", opts)

--
-- Diagnostics
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
