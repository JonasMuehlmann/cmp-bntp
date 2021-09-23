function get_tags()
    local handle = assert(io.popen('tagmanager list', 'r'))

    local tags = handle:read('*all')

    handle:close()

    return tags
end
