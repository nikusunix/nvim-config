return {
    {
        "mfussenegger/nvim-lint",
        config = function()
            local plugin = require("lint")

            plugin.linters_by_ft = {}

            vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
                callback = function()
                    plugin.try_lint()
                end,
            })
        end,
    },
}
