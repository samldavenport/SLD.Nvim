return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "b0o/schemastore.nvim"
        },

        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup()

            local capabilities = require("blink.cmp").get_lsp_capabilities();
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,

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
                            library = {
                                vim.env.VIMRUNTIME,
                            },

                            checkThirdParty = false,
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
                capabilities = capabilities,
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
                capabilities = capabilities,
                settings = {
                    powershell = {
                        codeFormatting = {
                            Preset = "OTBS",
                        },
                    },
                },
            })

            vim.lsp.enable("powershell_es")

            ----------------------------------------------------------------------
            -- CMake
            ----------------------------------------------------------------------

            vim.lsp.config("neocmake", {
                capabilities = capabilities,
                cmd = { "neocmakelsp", "--stdio" },

                filetypes = {
                    "cmake",
                },

                root_markers = {
                    "CMakeLists.txt",
                    ".git",
                },
            })

            vim.lsp.enable("neocmake")

            ----------------------------------------------------------------------
            -- GLSL
            ----------------------------------------------------------------------

            vim.lsp.config("glsl_analyzer", {
                capabilities        = capabilities,
                filetypes           = { "glsl" },
                root_markers        = { ".git" },
                cmd                 = {"glsl_analyzer"},
            })

            vim.lsp.enable("glsl_analyzer")

            ----------------------------------------------------------------------
            -- JSON 
            ----------------------------------------------------------------------

            vim.lsp.config("jsonls", {
                settings = {
                    json = {
                        validate = {
                            enable = true,
                        },

                        format = {
                            enable = true,
                        },

                        schemas = require("schemastore").json.schemas(),
                    },
                },
            })

            vim.lsp.enable("jsonls")

        end,
    },
}
