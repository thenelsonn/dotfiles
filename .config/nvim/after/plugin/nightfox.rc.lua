local nightfox_status, nightfox = pcall(require, "nightfox")
if not nightfox_status then return end

nightfox.setup({
  options = {
    transparent = true,     -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    module_default = true,  -- Default enable value for modules
  }
})

vim.cmd("colorscheme carbonfox")
