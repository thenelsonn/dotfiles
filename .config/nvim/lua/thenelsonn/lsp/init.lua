-- Load null-ls and configure Neovim diagnostics
require("thenelsonn.lsp.null-ls")
require("thenelsonn.lsp.diagnostics")

local cmp = require("thenelsonn.lsp.cmp")
local servers = require("thenelsonn.lsp.servers")
if cmp == nil or servers == nil then return end

-- initialize minimal lsp-zero preset
local preset = require("lsp-zero").preset({
  name = "minimal",
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

servers.setup(preset) -- configure language servers
cmp.setup(preset)     -- configure autocompletion (nvim-cmp)

preset.setup()
