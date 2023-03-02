local telescope_status, telescope = pcall(require, "telescope")
local actions_status, actions = pcall(require, "telescope.actions")
if not telescope_status or not actions_status then
  return
end

telescope.setup({
  defaults = {
    respect_gitignore = true,
    hidden = true,
    mappings = {},
  }
})
