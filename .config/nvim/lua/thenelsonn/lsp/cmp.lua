local lspkind_status, lspkind = pcall(require, "lspkind")
local luasnip_status, luasnip = pcall(require, "luasnip")
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status or not luasnip_status
    or not lspkind_status then
  return {}
end

local M = {}

-- prevent selection of the first match
M.completion = {
  completeopt = "menu,menuone,noinsert,noselect"
}

-- initialize LuaSnip
M.snippet = {
  expand = function(args)
    luasnip.lsp_expand(args.body)
  end
}

-- set key mappings for autocompletion
M.mapping = cmp.mapping.preset.insert({
  ["<CR>"] = cmp.mapping.confirm({ select = false }),
  ["<Tab>"] = function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    elseif luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    else
      fallback()
    end
  end,
  ["<S-Tab>"] = function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif luasnip.jumpable( -1) then
      luasnip.jump( -1)
    else
      fallback()
    end
  end
})

-- specify nvim-cmp sources
M.sources = cmp.config.sources({
  { name = "nvim_lsp", group_index = 1 },
  { name = "luasnip",  group_index = 2 },
  { name = "buffer",   group_index = 3 },
  { name = "path",     group_index = 4 },
})

-- configure autocompletion menu formatting
M.formatting = {
  fields = { "kind", "abbr", "menu" },
  format = lspkind.cmp_format({
    mode = "symbol",
    maxwidth = 50,
    before = function(entry, item)
      item.menu = ({
            nvim_lsp = 'λ',
            luasnip = '⋗',
            buffer = 'Ω',
            path = '🖫',
            nvim_lua = 'Π',
          })[entry.source.name]
      return item
    end
  })
}

function M.setup(preset)
  preset.setup_nvim_cmp({
    preselect = "none",
    snippet = M.snippet,
    mapping = M.mapping,
    formatting = M.formatting,
    completion = M.completion,
  })
end

return M
