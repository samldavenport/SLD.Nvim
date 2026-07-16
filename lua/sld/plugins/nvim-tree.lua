return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 30,
                side = "left",
            },

            renderer = {
                group_empty = true,
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                },
            },

            filters = {
                dotfiles = false,
            },

            git = {
                enable = true,
                ignore = false,
            },

	    actions = {
		remove_file = {
		    close_window = true,
		},
		open_file = {
		    quit_on_open = false,
		},
	    },
	    update_focused_file = {
		enable = true,
		update_root = false,
	    },

	    filesystem_watchers = {
		enable = true,
	    },
	})
	vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {
            desc = "Toggle file explorer",
            silent = true,
        })
    end,
}
