local lspkind_status, lspkind = pcall(require, "lspkind")
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status or not lspkind_status then
	return
end

cmp.setup({
	snippet = {},
	-- window = {
	--   completion = cmp.config.window.bordered(),
	--   documentation = cmp.config.window.bordered(),
	-- },
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		["<S-Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end,
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp", group_index = 1 },
		{ name = "path", group_index = 2 },
		{ name = "buffer", group_index = 3 },
	}),
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = lspkind.cmp_format({
			mode = "symbol_text",
			max_width = 50,
			before = function(entry, vim_item)
				vim_item.menu = ({
					nvim_lsp = "[LSP]",
					buffer = "[Buffer]",
					path = "[Path]",
				})[entry.source.name]
				return vim_item
			end,
		}),
	},
})
