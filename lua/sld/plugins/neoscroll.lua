return {
    "karb94/neoscroll.nvim",
    opts = {},
    config = function()
	
	local neoscroll = require("neoscroll")

        neoscroll.setup({
            easing = "linear",
            performance_mode = true,
            hide_cursor = false,
        })

        local function map(lhs, amount)
            vim.keymap.set("n", lhs, function()
                neoscroll.scroll(amount(), {
                    move_cursor = true,
                    duration = 50,
                })
            end)
        end

        map("<C-d>", function() return vim.wo.scroll end)
        map("<C-u>", function() return -vim.wo.scroll end)
        map("<C-f>", function() return vim.api.nvim_win_get_height(0) end)
        map("<C-b>", function() return -vim.api.nvim_win_get_height(0) end)
    end,
}
