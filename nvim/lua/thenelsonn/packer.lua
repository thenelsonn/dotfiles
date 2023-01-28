vim.cmd("packadd packer.nvim")

local fn = vim.fn
local pth = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(pth)) > 0 then
  vim.notify("Packer can't be loaded, since it not installed on your system")
  return
end

-- Automatically sync packages 
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

local p_status, packer = pcall(require, "packer")
if not p_status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")           -- let packer.nvim manage itself

  use("nvim-tree/nvim-tree.lua")          -- a file explorer tree
  use("nvim-tree/nvim-web-devicons")      -- icon pack for plugins

  use("nvim-telescope/telescope.nvim")    -- highly extendable fuzzy finder
  use("nvim-lua/plenary.nvim")
  
  use("nvim-lualine/lualine.nvim")        -- neovim statusline
  use("edeneast/nightfox.nvim")           -- colorscheme

  use("nvim-treesitter/nvim-treesitter")  -- an incremental parsing system
  use("windwp/nvim-ts-autotag")           -- an autotag plugin
  use("windwp/nvim-autopairs")            -- an autopair plugin
end)
