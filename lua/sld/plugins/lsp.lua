return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },

        config = function()
	    require("mason").setup()
	    require("mason-lspconfig").setup()
            vim.lsp.config("lua_ls", {
                filetypes = { "lua" },
                root_markers = {
                    ".git",
                    ".luarc.json",
                    ".luarc.jsonc",
                },
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },
                        diagnostics = {
                            globals = {
                                "vim",
                            },
                        },
                        workspace = {
                            checkThirdParty = false,
                        },
                        completion = {
                            callSnippet = "Replace",
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })
            vim.lsp.enable("lua_ls")
	    ----------------------------------------------------------------------
            -- Clangd
            ----------------------------------------------------------------------

            vim.lsp.config("clangd", {
                cmd = {
                    "clangd",
	            "--all-scopes-completion",
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
		    ".nvim.lua"
                },
            })

            vim.lsp.enable("clangd")

	    ----------------------------------------------------------------------
            -- Powershell 
            ----------------------------------------------------------------------

            vim.lsp.config("powershell_es", {
                settings = {
                    powershell = {
                        codeFormatting = {
                            Preset = "OTBS",
                        },
                    },
                },
            })

	    vim.lsp.enable("powershell_es")

        end,
    },
}
