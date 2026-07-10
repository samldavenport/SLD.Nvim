return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
	indent = {
	    char = "│", -- The vertical separator character
	    tab_char = "│",
	},
    	scope = {
	    enabled = true, -- Highlights the current code block scope
	    show_start = false,
	    show_end = false,
	},
    },
}
