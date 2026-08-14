return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                -- This affects vimgrep/live_grep arguments if needed
                vimgrep_arguments = {
                  "rg",
                  "--color=never",
                  "--no-heading",
                  "--with-filename",
                  "--line-number",
                  "--column",
                  "--smart-case",
                  "--hidden", -- searches hidden files in live_grep
                },
            },
            pickers = {
                find_files = {
                    hidden = true, -- searches hidden files in find_files
                },
              },
        })


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
