local autopair_status, autopairs = pcall(require, "nvim-autopairs")
local autotag_status, autotag = pcall(require, "nvim-ts-autotag")
if not autopair_status or not autotag_status then
  return
end

autopairs.setup({})
autotag.setup({})

