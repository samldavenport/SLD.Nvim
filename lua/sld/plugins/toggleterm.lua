return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {},
        config = function()
            require("toggleterm").setup({
                shell = "pwsh.exe -NoLogo",
                direction = "float"            
            })

            vim.keymap.set({ "n", "t" }, "<leader>t", "<cmd>ToggleTerm<CR>")
        end
    }
}
