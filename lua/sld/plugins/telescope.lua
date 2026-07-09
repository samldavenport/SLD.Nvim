return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({})

        local map = vim.keymap.set
        local opts = { silent = true }

        map("n", "<C-p>",      builtin.find_files, opts)
        map("n", "<leader>ff", builtin.find_files, opts)
        map("n", "<leader>fg", builtin.live_grep,  opts)
        map("n", "<leader>fb", builtin.buffers,    opts)
        map("n", "<leader>fh", builtin.help_tags,  opts)
        map("n", "<leader>fr", builtin.oldfiles,   opts)
        map("n", "<leader>fs", builtin.lsp_document_symbols, opts)
    end,
}
