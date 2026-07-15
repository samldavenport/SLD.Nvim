return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",

        -- Snippet engine
        "L3MON4D3/LuaSnip",

        -- Snippet completion source
        "saadparwaiz1/cmp_luasnip",
    },

    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        cmp.setup({
            -- Automatically select the first completion item
            preselect = cmp.PreselectMode.Item,

            completion = {
                completeopt = "menu,menuone,noinsert",
            },

            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            mapping = cmp.mapping.preset.insert({
                -- Accept current completion
                ["<CR>"] = cmp.mapping.confirm({
                    select = false,
                }),

                -- Navigate completion list
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                -- Scroll documentation
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),

                -- Manually trigger completion
                ["<C-Space>"] = cmp.mapping.complete(),

                -- Abort completion
                ["<C-e>"] = cmp.mapping.abort(),
            }),

            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
            }, {
                { name = "buffer" },
                { name = "path" },
            }),

            formatting = {
                format = function(entry, item)
                    local icons = {
                        nvim_lsp = "λ",
                        luasnip = "⋗",
                        buffer = "Ω",
                        path = "📁",
                    }

                    item.kind = string.format(
                        "%s %s",
                        icons[entry.source.name] or "",
                        item.kind
                    )

                    return item
                end,
            },

            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
        })
    end,
}
