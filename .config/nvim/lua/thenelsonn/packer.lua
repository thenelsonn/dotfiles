vim.cmd("packadd packer.nvim")

local fn = vim.fn
local pth = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(pth)) > 0 then
  vim.notify("packer.nvim is not installed")
  return
end

require("packer").startup(function(use)
  use("wbthomason/packer.nvim")                     -- let packer.nvim manage itself

  use("goolord/alpha-nvim")                         -- neovim greeter
  use("edeneast/nightfox.nvim")                     -- colorscheme
  use("nvim-lualine/lualine.nvim")                  -- neovim statusline

  use("nvim-telescope/telescope-file-browser.nvim") -- extension for telescope.nvim
  use("nvim-telescope/telescope.nvim")              -- highly extendable fuzzy finder

  use("nvim-treesitter/nvim-treesitter")            -- an incremental parsing system
  use("windwp/nvim-ts-autotag")                     -- an autotag plugin
  use("windwp/nvim-autopairs")                      -- an autopair plugin
  use("numToStr/Comment.nvim")                      -- comment plugin

  use("williamboman/mason-lspconfig.nvim")          -- an extension for mason.nvim
  use("williamboman/mason.nvim")                    -- portable package manager

  use("jose-elias-alvarez/null-ls.nvim")            -- lsp diagnostics, code actions, and more
  use("VonHeikemen/lsp-zero.nvim")                  -- a starting point to setup lsp related features
  use("neovim/nvim-lspconfig")                      -- configuration for Neovim's built-in LSP
  use("onsails/lspkind.nvim")                       -- vscode-like pictograms

  use("hrsh7th/nvim-cmp")                           -- a completion plugin
  use("hrsh7th/cmp-path")                           -- nvim-cmp source for path
  use("hrsh7th/cmp-buffer")                         -- nvim-cmp source for buffer words
  use("hrsh7th/cmp-cmdline")                        -- nvim-cmp source for cmd commands
  use("hrsh7th/cmp-nvim-lsp")                       -- nvim-cmp source for LSP
  use("saadparwaiz1/cmp_luasnip")                   -- nvim-cmp source for luasnip completion

  use("L3MON4D3/LuaSnip")                           -- snippet engine
  use("rafamadriz/friendly-snippets")               -- a set of preconfigured snippets

  use("iamcco/markdown-preview.nvim")               -- markdown preview plugin for (neo)vim
  use("nvim-tree/nvim-web-devicons")                -- icon pack for plugins
  use("lewis6991/gitsigns.nvim")                    -- git integration
  use("RRethy/vim-illuminate")                      -- auto highlight other uses of the word
  use("nvim-lua/plenary.nvim")
end)
