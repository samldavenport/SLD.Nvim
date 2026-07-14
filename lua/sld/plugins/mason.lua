return {
    {
        "williamboman/mason.nvim",

        opts = {
            ui = {
                border = "rounded",

                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },

    {
        "williamboman/mason-lspconfig.nvim",

        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        opts = {
            ensure_installed = {

		-- servers
                "clangd",
                "powershell_es",
                "lua_ls",

            },

            automatic_enable = false,
        },
    },
}
