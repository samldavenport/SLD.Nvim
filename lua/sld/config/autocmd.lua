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

-- LSP Attach 
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)

        local opts = {
            buffer = args.buf,
            silent = true,
        }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
    end,
})
