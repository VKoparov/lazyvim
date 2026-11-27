return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    local default_icon = opts.options.get_element_icon
    opts.options.get_element_icon = function(tab)
      local icons = package.loaded["real-icons"]
      if icons and icons.is_supported() then
        local category = tab.directory and "directory" or "file"
        local glyph, highlight = icons.get(category, tab.path)
        return glyph, highlight
      end
      if default_icon then
        return default_icon(tab)
      end
    end
  end,
}
