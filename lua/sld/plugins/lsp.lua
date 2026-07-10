return {
    {
        "neovim/nvim-lspconfig",

        config = function()

            vim.lsp.config("clangd", {
                cmd = {
                    "clangd",

                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--header-insertion=iwyu",
                    "--pch-storage=memory",
                    "--offset-encoding=utf-16",
                },

                filetypes = {
                    "c",
                    "cpp",
                    "objc",
                    "objcpp",
		    "h",
		    "hpp"
                },

                root_markers = {
                    ".git",
                    "compile_commands.json",
                    "compile_flags.txt",
                },
            })

            vim.lsp.enable("clangd")

        end,
    },
}
