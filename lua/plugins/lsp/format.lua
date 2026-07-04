return {
    {
        "stevearc/conform.nvim",
        opts = {
            formaatters_by_ft = {
                lua = { "stylua" },
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
