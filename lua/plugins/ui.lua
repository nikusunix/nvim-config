return {
    {
        "nvim-mini/mini.icons",
        version = "*",
        opt = { style = "glyph" },
    },
    {
        "nvim-mini/mini.statusline",
        version = "*",
        opt = {
            use_icons = true,
            content = {
                active = function()
                    local plugin = require("mini.statusline")

                    return plugin.default_content_active()
                end,
                inactive = function()
                    local plugin = require("mini.statusline")

                    return plugin.default_content_inactive()
                end,
            },
        },
    },
    {
        "nvim-mini/mini.tabline",
        version = "*",
        opt = { show_icons = true, tabpage_section = "left" },
    },
    {
        "nvim-mini/mini.files",
        version = "*",
        opt = {},
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
}
