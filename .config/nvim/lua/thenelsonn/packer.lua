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

  use("nvim-tree/nvim-web-devicons") -- icon pack for plugins

  use("nvim-telescope/telescope-file-browser.nvim") -- file browser extension for telescope.nvim
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

  use("iamcco/markdown-preview.nvim") -- markdown preview plugin for (neo)vim

  use("onsails/lspkind.nvim") -- vscode-like pictograms

  use("jose-elias-alvarez/null-ls.nvim") -- lsp diagnostics, code actions, and more
  use("RRethy/vim-illuminate") -- auto highlight other uses of the word

  use("simrat39/rust-tools.nvim") -- tools for better development in rust using Neovim's LSP

  use({
    "VonHeikemen/lsp-zero.nvim", -- a starting point to setup lsp related features
    requires = {
      -- LSP Support
      "neovim/nvim-lspconfig", -- configuration for Nvim LSP

      -- Autocompletion
      "hrsh7th/nvim-cmp", -- a completion plugin coded in Lua
      "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words
      "hrsh7th/cmp-path", -- nvim-cmp source for path
      "hrsh7th/cmp-cmdline", -- nvim-cmp source for (Neo)vim's command-line
      "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for Neovim's built-in LSP
      "saadparwaiz1/cmp_luasnip", -- nvim-cmp source for luasnip completion

      -- Snippets
      "L3MON4D3/LuaSnip", -- snippet engine for Neovim
      "rafamadriz/friendly-snippets", -- a set of preconfigured snippets
    }
  })
end)
