local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
	vim.notify("Telescope is not installed")
	return
end

telescope.setup()
