local tags = {}

tags.get_tags = function(self)
    local handle = assert(io.popen('tagmanager list', 'r'))

    local output = handle:read('*all')

    handle:close()

    return output 
end

return tags
