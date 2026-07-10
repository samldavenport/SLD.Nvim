local pallet = {
    bg            = "#202020",
    bg_alt        = "#2a2827",
    bg_popup      = "#2e2c2b",
    bg_visual     = "#46403d",
    bg_cursorline = "#282828",
    border        = "#3d3835",
    border_alt    = "#514945",
    fg            = "#d4be98",
    fg_alt        = "#a89984",
    fg_muted      = "#928374",
    comment       = "#665c54",
    red           = "#ea6962",
    red_dark      = "#b85651",
    orange        = "#e78a4e",
    yellow        = "#d8a657",
    green         = "#a9b665",
    aqua          = "#89b482",
    blue          = "#7daea3",
    cyan          = "#68948a",
    purple        = "#d3869b",
    black         = "#070808",
}

local function set_color(group, spec)
    vim.api.nvim_set_hl(0, group, spec)
end

set_color("@string.cpp",              {fg = pallet.yellow})
set_color("@punctuation.bracket.cpp", {fg = pallet.yellow})
set_color("@type.builtin.cpp",        {fg = pallet.blue})
set_color("@type.definition.cpp",     {fg = pallet.blue})
set_color("@type.cpp",                {fg = pallet.blue})
set_color("@constant.macro.cpp",      {fg = pallet.purple})
set_color("@constant.builtin.cpp",    {fg = pallet.purple})
set_color("@constant",                {fg = pallet.purple})
set_color("@keyword.modifier.cpp",    {fg = pallet.orange})
set_color("@keyword",                 {fg = pallet.orange})
set_color("@variable.member.cpp",     {fg = pallet.fg})
set_color("@variable.parameter.cpp",  {fg = pallet.fg})
set_color("@property.cpp",            {fg = pallet.fg})
set_color("@variable.cpp",            {fg = pallet.fg})
set_color("@module.cpp",              {fg = pallet.aqua})
