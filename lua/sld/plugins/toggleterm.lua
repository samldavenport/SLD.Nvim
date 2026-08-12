return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {},
        config = function()
            require("toggleterm").setup({
                shell = "pwsh.exe -NoLogo",
                size = 15,
                direction = "horizontal"
            })

            vim.keymap.set({ "n", "t" }, "<C-j>", "<cmd>ToggleTerm<CR>")
        end
    }
}
