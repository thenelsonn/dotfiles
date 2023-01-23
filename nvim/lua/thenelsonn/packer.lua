vim.cmd("packadd packer.nvim")

-- Automatically sync packages 
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]]

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")       -- let packer.nvim manage itself
end)
