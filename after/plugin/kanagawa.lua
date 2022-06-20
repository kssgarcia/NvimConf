local default_colors = require("kanagawa.colors").setup()

-- this will affect all the hl-groups where the redefined colors are used
local my_colors = {
    -- use the palette color name...
}

local overrides = {
    -- create a new hl-group using default palette colors and/or new ones
    MyHlGroup1 = { fg = default_colors.waveRed, bg = "#AAAAAA", style="underline,bold", guisp="blue" },

    -- override existing hl-groups, the new keywords are merged with existing ones
    VertSplit  = { fg = default_colors.bg_dark, bg = "NONE" },
    TSError    = { link = "Error" },
    TSKeywordOperator = { style = 'bold'},
    StatusLine = { fg = my_colors.new_color }
}

require'kanagawa'.setup({ overrides = overrides, colors = my_colors })
