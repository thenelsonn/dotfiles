vim.cmd("packadd packer.nvim")

local fn = vim.fn
local pth = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(pth)) > 0 then
	vim.notify("Packer can't be loaded, since it's not installed on your system")
	return
end

-- Automatically sync packages
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local p_status, packer = pcall(require, "packer")
if not p_status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- let packer.nvim manage itself

	use("nvim-tree/nvim-tree.lua") -- a file explorer tree
	use("nvim-tree/nvim-web-devicons") -- icon pack for plugins

	use("nvim-telescope/telescope.nvim") -- highly extendable fuzzy finder
	use("nvim-lua/plenary.nvim")

	use("nvim-lualine/lualine.nvim") -- neovim statusline
	use("edeneast/nightfox.nvim") -- colorscheme
	use("goolord/alpha-nvim") -- neovim greeter

	use("nvim-treesitter/nvim-treesitter") -- an incremental parsing system
	use("windwp/nvim-ts-autotag") -- an autotag plugin
	use("windwp/nvim-autopairs") -- an autopair plugin

	use("numToStr/Comment.nvim") -- comment plugin
	use("JoosepAlviste/nvim-ts-context-commentstring") -- extension to Comment.nvim and treesitter

	use("lewis6991/gitsigns.nvim") -- git integration

	use("hrsh7th/nvim-cmp") -- a completion plugin coded in Lua
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in language server client
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-path") -- nvim-cmp source for path
	use("hrsh7th/cmp-cmdline") -- nvim-cmp source for vim's cmdline

	use("onsails/lspkind.nvim") -- vscode-like pictograms

	use("neovim/nvim-lspconfig") -- configuration for Nvim LSP
	use("williamboman/mason.nvim") -- portable package manager
	use("jose-elias-alvarez/null-ls.nvim") -- lsp diagnostics, code actions, and more
	use("williamboman/mason-lspconfig.nvim") -- extension to mason.nvim
end)
