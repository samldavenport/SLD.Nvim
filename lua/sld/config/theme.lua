vim.cmd.colorscheme("gruvbox-material")
vim.o.background = "dark" -- or "light" for light mode

vim.api.nvim_set_hl(0, "Normal",       { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC",     { bg = "NONE", ctermbg = "NONE"})
vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'NONE',bold = false})

local colors = require("gruvbox-material.colors").get(vim.o.background, "hard")

local function set_color(group, spec)
    vim.api.nvim_set_hl(0, group, {fg = spec})
end


set_color("@variable.member",    colors.fg)
set_color("@variable.parameter", colors.fg)
set_color("@property",           colors.fg)
set_color("@variable",           colors.fg)
set_color("@keyword.import",     colors.red)
set_color("@keyword.type",       colors.red)
set_color("@keyword.return",     colors.red)
set_color("@keyword",            colors.red)
set_color("@string",             colors.yellow)
set_color("@keyword.modifier",   colors.orange)
set_color("@module",             colors.aqua)
set_color("@constant.macro",     colors.purple)
set_color("@_parent.cpp",        colors.purple)
set_color("@constant.builtin",   colors.purple)
set_color("@constant",           colors.purple)
set_color("@lsp.type.macro",     colors.purple)
set_color("@variable.builtin",   colors.purple)
set_color("@type.builtin",       colors.blue)
set_color("@type.definition",    colors.blue)
set_color("@type",               colors.blue)
