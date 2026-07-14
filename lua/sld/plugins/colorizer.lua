return {
    "NvChad/nvim-colorizer.lua",

    config = function()
        require("colorizer").setup({
	    names = false,
	    RGB = false,
	    RRGGBB = false
	})
    end,
}
