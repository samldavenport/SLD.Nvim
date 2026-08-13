return {
    {
        "stevearc/overseer.nvim",

        opts = {
            task_list = {
                direction = "bottom",
                min_height = 10,
            },
        },

        config = function()
            local overseer = require("overseer")
            overseer.setup({

            })

            vim.keymap.set({"n"}, "<leader>ot", "<cmd>OverseerToggle<CR>") 
            vim.keymap.set({"n"}, "<leader>or", "<cmd>OverseerRun<CR>") 
        end
    },
}
--[[

Example project specific task

overseer.register_template({
    name = "Run Debug",

    builder = function()
        return {
            cmd = {
                vim.fn.getcwd() .. "/build/debug/bin/ItFliesBy.exe",
            },

            cwd = vim.fn.getcwd() .. "/build/debug/bin",
            components = {
                "default",
            },
        }
    end,
})

vim.keymap.set("n", "<F5>", function()
    require("overseer").run_template({
        name = "Run Debug",
    })
end, {})
--]]
