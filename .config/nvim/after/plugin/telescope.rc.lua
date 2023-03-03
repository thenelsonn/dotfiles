local telescope_status, telescope = pcall(require, "telescope")
local builtin_status, builtin = pcall(require, "telescope.builtin")
if not telescope_status or not builtin_status then
  return
end

telescope.setup({
  defaults = {
    respect_gitignore = true,
    hidden = true,
    mappings = {},
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    }
  }
})

telescope.load_extension("file_browser")
local browser = telescope.extensions.file_browser

vim.keymap.set("n", "<space>w", builtin.find_files)
vim.keymap.set("n", "<space>e", browser.file_browser)
