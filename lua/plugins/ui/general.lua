return {
    {
        "nvim-mini/mini.icons",
        version = "*",
        opts = { style = "glyph" },
    },
    {
        "nvim-mini/mini.tabline",
        version = "*",
        opts = { show_icons = true },
    },
    {
        "nvim-mini/mini.files",
        version = "*",
        opts = {},
        keys = {
            {
                "<leader>ue",
                function()
                    local plugin = require("mini.files")

                    if not plugin.close() then
                        plugin.open()
                    end
                end,
                desc = "Toggle file explorer",
            },
        },
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "rktjmp/lush.nvim",
        version = "*",
    },
}
