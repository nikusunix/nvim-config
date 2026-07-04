return {
    {
        "mason-org/mason.nvim",
        version = "*",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        version = "*",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)

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
                "lua_ls",
                "stylua",
                -- Python
            },
            integrations = {
                ["mason-lspconfig"] = true,
            },
        },
    },
}
