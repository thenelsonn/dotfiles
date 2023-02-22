local null_ls_status, null_ls = pcall(require, "null-ls")
if not null_ls_status then
  return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug = false,
  sources = {
    formatting.stylua
  }
})
