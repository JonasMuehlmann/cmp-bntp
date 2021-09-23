-- https://github.com/hrsh7th/nvim-cmp#source-creation
local source = {}

---Source constructor.
source.new = function()
  local self = setmetatable({}, { __index = source })
  return self
end

-- ---Return the source is available or not.
-- ---@return boolean
-- function source:is_available()
--   return true
-- end

-- Invoke completion (required).
--   If you want to abort completion, just call the callback without arguments.
-- @param params cmp.SourceCompletionApiParams
-- @param callback fun(response: lsp.CompletionResponse|nil)
function source:complete(params, callback)
  callback({
    { label = 'January' },
    { label = 'February' },
    { label = 'March' },
    { label = 'April' },
    { label = 'May' },
    { label = 'June' },
    { label = 'July' },
    { label = 'August' },
    { label = 'September' },
    { label = 'October' },
    { label = 'November' },
    { label = 'December' },
  })
end

return source
