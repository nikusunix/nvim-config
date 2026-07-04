return {
    {
        "stevearc/conform.nvim",
        opts = {
            formaatters_by_ft = {
                lua = { "stylua" },
                python = { "ruff_format" },
            },
        },
        keys = {
            {
                "<leader>bf",
                function()
                    require("conform").format({
                        async = true,
                        lsp_fallback = true,
                    })
                end,
                desc = "Buffer/Format",
            },
        },
    },
}
