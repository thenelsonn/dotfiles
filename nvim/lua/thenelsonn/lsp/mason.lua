local servers = {
	"lua_ls",
  "pyright",
  "jsonls",
  "clangd",
  "bashls"
} -- list of LSPs to be configured
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
local mason_status, mason = pcall(require, "mason")

if not mason_status or not mason_lspconfig_status or not lspconfig_status or not cmp_nvim_lsp_status then
	vim.notify("Could not configure Neovim LSP")
	return
end

mason.setup({
	-- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
	-- debugging issues with package installations.
	log_level = vim.log.levels.INFO,
	-- Limit for the maximum amount of packages to be installed at the same time. Once this limit is reached, any further
	-- packages that are requested to be installed will be put in a queue.
	max_concurrent_installers = 4,
	ui = {
		border = "rounded",

		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
})

mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local on_attach = function(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Format", { clear = true }),
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ sync = false })
			end,
		})
	end
end

local capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, server in pairs(servers) do
	local opts = { on_attach = on_attach, capabilities = capabilities }
	local extend_required, conf_opts = pcall(require, "thenelsonn.lsp.settings." .. server)
	if extend_required then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
