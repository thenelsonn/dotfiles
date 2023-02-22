local treesitter_status, treesitter = pcall(require, "nvim-treesitter")
if not treesitter_status then
	vim.notify("Treesitter is not installed")
	return
end

local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = {},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
