local telescope_status, telescope = pcall(require, "telescope")
local actions_status, actions = pcall(require, "telescope.actions")
if not telescope_status or not actions_status then
  return
end

telescope.setup({
  defaults = {
    respect_gitignore = true,
    hidden = true,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  },
  extensions = {
    file_browser = {
      layout_config = { height = 40 },
      cwd = vim.fn.expand("%:p:h"),
      respect_gitignore = true,
      previewer = false,
      grouped = true,
      hidden = true,
      theme = "dropdown",
      initial_mode = "normal",
      hijack_netrw = true,
      mappings = {},
    },
  },
})

telescope.load_extension("file_browser")
