return {
    {
        "mason-org/mason.nvim",
        version = "*",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        version = "*",
        opts = {
            ensure_installed = {
                -- Lua
                "lua_ls",
            },
        },
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)

            -- Types
            require("plugins.lsp.types.lua_ls")
        end,
    },

    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason-org/mason.nvim",
        },
        opts = {
            ensure_installed = {
                -- Lua
                "stylua",
            },
        },
    },
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
                desc = "Format buffer",
            },
        },
    },
    {
        "nvim-mini/mini.completion",
        version = "*",
        opts = {},
    },
}
