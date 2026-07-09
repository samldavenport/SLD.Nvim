-- Highlight selected text when yanked
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
    desc = "Highlight selection on yank",
    callback = function()
    
	vim.highlight.on_yank({

	    -- Use the 'IncSearch' highlight group by default
	    higroup = "IncSearch",
      
	    -- Highlight duration in milliseconds (e.g., 500ms)
	    timeout = 100,
	})
    end,
})
