-- https://github.com/hrsh7th/nvim-cmp#source-creation
local source = {}
local tags = require('cmp_bntp.tags')


-- TODO: Find a good way to gurantee up to date tags:
-- Reacting to db changes?
-- Checking for new tags every few seconds?
source.update_tags = function(self)
    local tags = tags.get_tags()

    for _, tag in ipairs(tags) do
        table.insert(self.items, {label=tag})
    end
end


---Source constructor.
source.new = function()
    local self = setmetatable({}, { __index = source })
    self.items = {}

    self:update_tags()

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
function source:complete(_, callback)
  callback(self.items)
end

return source
