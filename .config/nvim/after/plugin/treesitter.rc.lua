local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then return end

treesitter.setup({
  ensure_installed = {},
  sync_install = false,
  auto_install = false,
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
