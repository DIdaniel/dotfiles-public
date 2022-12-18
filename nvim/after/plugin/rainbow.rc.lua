local status, config = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

local queries = require("nvim-treesitter.query")

config.setup {
  highlight = {
    -- ...
  },
  rainbow = {
    enable = true,
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    module_path = "rainbow.internal",
    is_supported = function(lang)
      return queries.get_query(lang, "parens") ~= nil
    end,
    extended_mode = true,
    colors = {
      "#cc241d",
      "#a89984",
      "#b16286",
      "#d79921",
      "#689d6a",
      "#d65d0e",
      "#458588",
    },
    termcolors = {
      "Red",
      "Green",
      "Yellow",
      "Blue",
      "Magenta",
      "Cyan",
      "White",
    },
  },
}
