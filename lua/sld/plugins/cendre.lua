return {
    "Aejkatappaja/cendre",
    lazy = false,
    priority = 1000,
    config = function()
        require("cendre").setup({
            background = "hard", -- "hard" | "medium" | "soft"
            italic = false,
        })
    end,
}
