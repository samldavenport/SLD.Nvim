return {
    "nvim-treesitter/nvim-treesitter",

    lazy = false,
    build = ":TSUpdate",

    config = function()
        local ts = require("nvim-treesitter")

        -- Optional unless you want a custom install location.
        ts.setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
        })

        -- Install the parsers you want.
        ts.install({
            "c",
            "cpp",
            "lua",
            "vim",
            "vimdoc",
            "markdown",
            "markdown_inline",
            "query",
            "json",
        })
	
	vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })

    end,
}
