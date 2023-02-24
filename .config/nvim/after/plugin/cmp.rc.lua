local lspkind_status, lspkind = pcall(require, "lspkind")
local luasnip_status, luasnip = pcall(require, "luasnip")
local cmp_status, cmp = pcall(require, "cmp")
if not luasnip_status or not cmp_status or not lspkind_status then
  vim.notify("nvim-cmp could not be loaded")
  return
end

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  -- window = {
  --   completion = cmp.config.window.bordered(),
  --   documentation = cmp.config.window.bordered(),
  -- },
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp", group_index = 1 },
    { name = "luasnip", group_index = 2 },
    { name = "path", group_index = 3 },
    { name = "buffer", group_index = 4 },
  }),
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = lspkind.cmp_format({
      mode = "symbol",
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
})
