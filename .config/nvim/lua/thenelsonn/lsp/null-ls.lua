local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.stylua.with({ extra_args = { "--indent-type Spaces", "--indent-width 2" } }),
    formatting.prettierd,
    formatting.clang_format,
    -- diagnostics.eslint,
  },
})
