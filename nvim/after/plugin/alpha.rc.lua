local alpha_status, alpha = pcall(require, "alpha")
if not alpha_status then
  vim.notify("Alpha is not installed")
  return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.config.opts.noautocmd = true
dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

alpha.setup(dashboard.config)
