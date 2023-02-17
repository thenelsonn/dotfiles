local comment_status, comment = pcall(require, "Comment")
if not comment_status then
  return
end

comment.setup({
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = 'ce',
    block = 'cbe',
  },
  opleader = {
    line = 'ce',
    block = 'cbe',
  },
  mappings = {
    basic = true,
    extra = true,
  },
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  post_hook = nil,
})
