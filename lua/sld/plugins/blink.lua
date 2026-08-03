return {
    "Saghen/blink.cmp",
    version = "*",
    event = "InsertEnter",


    opts = {
        ----------------------------------------------------------------------------
        -- Keymaps
        ----------------------------------------------------------------------------
        keymap = {
            preset = "super-tab",
        },

        ----------------------------------------------------------------------------
        -- Appearance
        ----------------------------------------------------------------------------
        appearance = {
            nerd_font_variant = "mono",
        },

        ----------------------------------------------------------------------------
        -- Completion
        ----------------------------------------------------------------------------
        completion = {
            keyword = {
                range = "full",
            },

            list = {
                selection = {
                    preselect = true,
                    auto_insert = false,
                },
            },

            menu = {
                border = "rounded",
                draw = {
                    columns = {
                        { "kind_icon" },
                        { "label", "label_description", gap = 1 },
                        { "kind" },
                    },
                },
            },

            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,

                window = {
                    border = "rounded",
                },
            },

            ghost_text = {
                enabled = false,
            },

            trigger = {
            
                show_on_trigger_character = true
            }

        },

        ----------------------------------------------------------------------------
        -- Completion Sources
        ----------------------------------------------------------------------------
        sources = {
            default = {
                "lsp",
                "path",
                "buffer",
            },
        },

        ----------------------------------------------------------------------------
        -- Fuzzy matching
        ----------------------------------------------------------------------------
        fuzzy = {
            implementation = "prefer_rust_with_warning",
        },

        ----------------------------------------------------------------------------
        -- Signature Help
        ----------------------------------------------------------------------------
        signature = {
            enabled = true,

            window = {
                border = "rounded",
            },
        },
    },

    opts_extend = {
        "sources.default",
    },
}
