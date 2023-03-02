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
  }
})

vim.keymap.set("n", "<space>w", builtin.find_files)
