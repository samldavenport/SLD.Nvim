vim.o.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("gruvbox-material")

vim.api.nvim_set_hl(0, "Normal",       { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC",     { bg = "NONE", ctermbg = "NONE"})
vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'NONE',bold = false})

