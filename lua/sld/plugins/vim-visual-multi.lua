return {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
	
	-- vim-visual-multi configuration
	vim.g.VM_maps = {
	    -- Match-based (VS Code defaults)
	    ["Find Under"]         = "<C-n>",
	    ["Find Subword Under"] = "<C-n>",
	    ["Find Next"]          = "<C-n>",
	    ["Find Prev"]          = "<C-p>",
	    ["Skip Region"]        = "<C-x>",
	    ["Remove Region"]      = "<C-c>",

	    -- Select all (VS Code Ctrl+Shift+L)
	    ["Select All"]         = "<C-S-l>",

	    -- Cursor creation (HOME ROW instead of arrows)
	    ["Add Cursor Down"]    = "<C-j>",
	    ["Add Cursor Up"]      = "<C-k>",

	    -- Optional: disable arrow versions to avoid muscle memory drift
	    ["Add Cursor Down (Arrow)"] = "",
	    ["Add Cursor Up (Arrow)"]   = "",
	}
    
    end
}
