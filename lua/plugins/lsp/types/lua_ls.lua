local opts = {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
}

vim.lsp.config("lua_ls", opts)
vim.lsp.enable("lua_ls")
