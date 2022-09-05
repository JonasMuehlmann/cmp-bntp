local tags = {}

tags.get_tags = function(_)
    local handle = assert(io.popen('bntp.go tag list --path-format', 'r'))

    local output_iter = handle:lines()

    local lines = {}

    for line in output_iter do
      table.insert(lines, line)
    end

    handle:close()

    return lines
end

return tags
