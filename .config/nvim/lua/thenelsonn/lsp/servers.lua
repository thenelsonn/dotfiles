local illuminate_status, illuminate = pcall(require, "illuminate")
if not illuminate_status then return nil end

local M = {} -- an export object

-- list of LSP servers to be loaded
M.servers = {
  "rust_analyzer",
  "tsserver",
  "pyright",
  "clangd",
  "jsonls",
  "lua_ls",
  "bashls",
  "html"
}

-- LSP client options
M.opts = {
  -- executes whenever a language server
  -- is attached to a buffer
  on_attach = function(client, bufnr)
    illuminate.on_attach(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("Format", { clear = true }),
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ sync = false })
        end,
      })
    end
  end,
  settings = {},
}

-- setup servers
function M.setup(preset)
  preset.ensure_installed(M.servers)
  for _, server in pairs(M.servers) do
    local opts_status, opts = pcall(require, "thenelsonn.lsp.settings." .. server)
    if opts_status and opts.settings then
      M.opts.settings = opts.settings
    end

    preset.configure(server, M.opts)
  end
end

return M;
