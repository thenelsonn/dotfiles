local comment_status, comment = pcall(require, "Comment")
if not comment_status then return end

comment.setup({
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = "ec",
    block = "ebc",
  },
  opleader = {
    line = "ec",
    block = "ebc",
  },
  mappings = {
    basic = true,
    extra = true,
  },
  pre_hook = nil,
  post_hook = nil,
})
