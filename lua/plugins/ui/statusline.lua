return {
    {
        "nvim-mini/mini.statusline",
        version = "*",
        opts = {
            use_icons = true,
            content = {
                active = function()
                    local statusline = require("mini.statusline")

                    local mode = statusline.section_mode({ trunc_width = 120 })
                    local filename = statusline.section_filename({ trunc_width = 140 })
                    local fileinfo = statusline.section_fileinfo({ trunc_width = 120 })
                    local location = statusline.section_location({ trunc_width = 75 })

                    return statusline.combine_groups({
                        { hl = "MiniStatuslineModeNormal", strings = { mode } },
                        "%<",
                        { strings = { filename } },
                        "%=",
                        { strings = { fileinfo } },
                        { strings = { location } },
                    })
                end,
            },
        },
    },
}
