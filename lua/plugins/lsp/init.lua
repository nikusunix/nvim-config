local plugins = { {
    "nvim-mini/mini.completion",
    version = "*",
    opts = {},
} }

vim.list_extend(plugins, require("plugins.lsp.lint"))
vim.list_extend(plugins, require("plugins.lsp.format"))
vim.list_extend(plugins, require("plugins.lsp.servers"))
vim.list_extend(plugins, require("plugins.lsp.treesitter"))

return plugins
